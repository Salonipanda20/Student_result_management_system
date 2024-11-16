<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map, java.util.ArrayList, java.util.HashMap" %>

<!DOCTYPE html>
<html lang="en">  
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Environmental-Chemistry- Registered Students</title>
    <style>
        /* Styling as before */
        body {
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            text-align: center;
            color: #4caf50;
        }
        .form-container {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }
        .form-container input {
            padding: 8px;
            margin: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-container button {
            padding: 10px 20px;
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }
        .form-container button:hover {
            background-color: #45a049;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4caf50;
            color: white;
        }
        .action-btn {
            padding: 5px 10px;
            margin: 2px;
            cursor: pointer;
            color: white;
            border: none;
            border-radius: 4px;
            font-weight: bold;
        }
        .update-btn {
            background-color: #2196f3;
        }
        .delete-btn {
            background-color: #f44336;
        }
    </style>
</head>
<body>

    <h1>Environmental-Chemistry- Registered Students</h1>

    <!-- Input form for student details -->
    <div class="form-container">
        <form action="Environmental-Chemistry.jsp" method="post">
            <input type="hidden" name="action" value="add" />
            <input type="text" name="name" placeholder="Name" value="<%= request.getParameter("name") %>" required />
            <input type="text" name="rollNo" placeholder="Roll No" value="<%= request.getParameter("rollNo") %>" required />
            <input type="text" name="fatherName" placeholder="Father's Name" value="<%= request.getParameter("fatherName") %>" required />
            <input type="text" name="gender" placeholder="Gender" value="<%= request.getParameter("gender") %>" required />
            <button type="submit">Add/Update Student</button>
        </form>
    </div>

    <%
        // Retrieve or initialize the student list in session
        List<Map<String, String>> students = (List<Map<String, String>>) session.getAttribute("students");
        if (students == null) {
            students = new ArrayList<>();
            session.setAttribute("students", students);
        }

        // Check for the action parameter to handle Add, Update, or Delete
        String action = request.getParameter("action");
        String rollNo = request.getParameter("rollNo");

        if ("add".equalsIgnoreCase(action)) {
            // Handle form submission to add or update a student
            String name = request.getParameter("name");
            String fatherName = request.getParameter("fatherName");
            String gender = request.getParameter("gender");

            // Check if roll number exists for updating, else add new
            boolean studentExists = false;
            for (Map<String, String> student : students) {
                if (student.get("rollNo").equals(rollNo)) {
                    student.put("name", name);
                    student.put("fatherName", fatherName);
                    student.put("gender", gender);
                    studentExists = true;
                    break;
                }
            }
            if (!studentExists) {
                // Add new student if roll number not found
                Map<String, String> student = new HashMap<>();
                student.put("name", name);
                student.put("rollNo", rollNo);
                student.put("fatherName", fatherName);
                student.put("gender", gender);
                students.add(student);
            }
            session.setAttribute("students", students);
            response.sendRedirect("Environmental-Chemistry.jsp");
            return;
        } else if ("delete".equalsIgnoreCase(action) && rollNo != null) {
            // Delete student with matching roll number
            students.removeIf(student -> rollNo.equals(student.get("rollNo")));
            session.setAttribute("students", students);
            response.sendRedirect("Environmental-Chemistry.jsp");
            return;
        }
    %>

    <!-- Table to display student details -->
    <table>
        <thead>
            <tr>
                <th>S.No</th>
                <th>Name</th>
                <th>Roll No</th>
                <th>Father's Name</th>
                <th>Gender</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                int count = 1;
                for (Map<String, String> student : students) {
            %>
                <tr>
                    <td><%= count++ %></td>
                    <td><%= student.get("name") %></td>
                    <td><%= student.get("rollNo") %></td>
                    <td><%= student.get("fatherName") %></td>
                    <td><%= student.get("gender") %></td>
                    <td>
                        <a href="Environmental-Chemistry.jsp?action=update&rollNo=<%= student.get("rollNo") %>" class="action-btn update-btn">Update</a>
                        <a href="Environmental-Chemistry.jsp?action=delete&rollNo=<%= student.get("rollNo") %>" class="action-btn delete-btn" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>
                    </td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>

</body>
</html>