<%@page import="java.sql.*" %>
<%@page import="com.resultmanagement.database.ConnectionProvider" %>
<%
    String regdNo = request.getParameter("rollNo");
    String name = "", course = "", branch = "", fatherName = "", gender = "";
    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM student WHERE regdNo=?");
        ps.setString(1, regdNo);
        ResultSet rs = ps.executeQuery();
        
        if (rs.next()) {
            name = rs.getString("name") != null ? rs.getString("name") : "";
            course = rs.getString("course") != null ? rs.getString("course") : "";
            branch = rs.getString("branch") != null ? rs.getString("branch") : "";
            fatherName = rs.getString("fatherName") != null ? rs.getString("fatherName") : "";
            gender = rs.getString("gender") != null ? rs.getString("gender") : "";
        } else {
            out.println("<script>alert('Student not found!');</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('Exception occurred! Please check the logs.');</script>");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Cool background color */
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50; /* Green button color */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <h2>Update Student Information for Roll Number: <%= regdNo %></h2>
    <form action="updateStudent.jsp" method="post">
        <input type="hidden" name="rollNo" value="<%= regdNo %>">

        <label for="name">New Name:</label>
        <input type="text" name="name" value="<%= name %>" required><br><br>

        <label for="course">Course:</label>
        <input type="text" name="course" value="<%= course %>" required><br><br>

        <label for="branch">Branch:</label>
        <input type="text" name="branch" value="<%= branch %>" required><br><br>

        <label for="fatherName">Father's Name:</label>
        <input type="text" name="fatherName" value="<%= fatherName %>" required><br><br>

        <label for="gender">Gender:</label>
        <input type="text" name="gender" value="<%= gender %>" required><br><br>

        <button type="submit">Update</button>
    </form>
</body>
</html>