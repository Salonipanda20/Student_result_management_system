<%@ page import="java.sql.*" %>
<%@ page import="com.resultmanagement.database.ConnectionProvider" %>
<%
    String rollNo = request.getParameter("rollNo");
    String enggPhysics = request.getParameter("enggPhysics");
    String advancedWebProgramming = request.getParameter("advancedWebProgramming");
    String operatingSystem = request.getParameter("operatingSystem");
    String advancedJava = request.getParameter("advancedJava");
    String springBoot = request.getParameter("springBoot");
    String angular = request.getParameter("angular");
    String dataVisualization = request.getParameter("dataVisualization");

    try {
        Connection con = ConnectionProvider.getCon();
        
        // Update query for updating results in the database
        String query = "UPDATE result SET enggPhysics=?, advancedWebProgramming=?, operatingSystem=?, advancedJava=?, springBoot=?, angular=?, dataVisualization=? WHERE rollNo=?";
        PreparedStatement ps = con.prepareStatement(query);

        // Set parameters for the update query
        ps.setString(1, enggPhysics);
        ps.setString(2, advancedWebProgramming);
        ps.setString(3, operatingSystem);
        ps.setString(4, advancedJava);
        ps.setString(5, springBoot);
        ps.setString(6, angular);
        ps.setString(7, dataVisualization);
        ps.setString(8, rollNo);

        // Execute update query
        int result = ps.executeUpdate();
        
        if (result > 0) {
            out.println("<script>alert('Result updated successfully!'); window.location='updateResult.jsp?rollNo=" + rollNo + "';</script>");
        } else {
            out.println("<script>alert('Failed to update result. Please try again.');</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('Exception occurred! Please check the logs.');</script>");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
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
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
        }

        .alert {
            text-align: center;
            color: red;
        }
    </style>
</head>
<body>
    <h2>Update Result for Roll Number: <%= rollNo %></h2>

    <form action="updateResult.jsp" method="post">
        <input type="hidden" name="rollNo" value="<%= rollNo %>">

        <label for="enggPhysics">Engineering Physics:</label>
        <input type="text" name="enggPhysics" value="<%= enggPhysics != null ? enggPhysics : "" %>" required><br>

        <label for="advancedWebProgramming">Advanced Web Programming:</label>
        <input type="text" name="advancedWebProgramming" value="<%= advancedWebProgramming != null ? advancedWebProgramming : "" %>" required><br>

        <label for="operatingSystem">Operating System:</label>
        <input type="text" name="operatingSystem" value="<%= operatingSystem != null ? operatingSystem : "" %>" required><br>

        <label for="advancedJava">Advanced Java:</label>
        <input type="text" name="advancedJava" value="<%= advancedJava != null ? advancedJava : "" %>" required><br>

        <label for="springBoot">Spring Boot:</label>
        <input type="text" name="springBoot" value="<%= springBoot != null ? springBoot : "" %>" required><br>

        <label for="angular">Angular:</label>
        <input type="text" name="angular" value="<%= angular != null ? angular : "" %>" required><br>

        <label for="dataVisualization">Data Visualization:</label>
        <input type="text" name="dataVisualization" value="<%= dataVisualization != null ? dataVisualization : "" %>" required><br>

        <button type="submit">Update</button>
    </form>
</body>
</html>
