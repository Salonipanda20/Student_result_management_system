<%@page import="java.sql.*" %>
<%@page import="com.resultmanagement.database.ConnectionProvider" %>
<%
    String rollNo = request.getParameter("rollNo");
    String newName = request.getParameter("name");
    String newCourse = request.getParameter("course");
    String newBranch = request.getParameter("branch");
    String newFatherName = request.getParameter("fatherName");
    String newGender = request.getParameter("gender");
    
    try {
        Connection con = ConnectionProvider.getCon();
        
        // SQL query to update multiple fields
        PreparedStatement ps = con.prepareStatement(
            "UPDATE student SET name=?, course=?, branch=?, fatherName=?, gender=? WHERE regdNo=?"
        );
        
        // Set parameters for the update
        ps.setString(1, newName);
        ps.setString(2, newCourse);
        ps.setString(3, newBranch);
        ps.setString(4, newFatherName);
        ps.setString(5, newGender);
        ps.setString(6, rollNo);
        
        // Execute the update
        int i = ps.executeUpdate();
        
        // Success or error message
        if (i > 0) {
            out.println("<script>alert('Student details updated successfully!');</script>");
            response.sendRedirect("adminHome.jsp");  // Redirect to a relevant page after update
        } else {
            out.println("<script>alert('Error updating details!');</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('Exception occurred!');</script>");
    }
%>