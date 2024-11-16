<%@page import="java.sql.*" %>
<%@page import="com.resultmanagement.database.ConnectionProvider" %>
<%
    String regdNo = request.getParameter("rollNo");

    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("DELETE FROM student WHERE regdNo=?");
        ps.setString(1, regdNo);

        int rowsAffected = ps.executeUpdate();
        if (rowsAffected > 0) {
            out.println("<script>alert('Student record deleted successfully!');</script>");
            response.sendRedirect("adminHome.jsp");  // Redirect to a relevant page after deletion
        } else {
            out.println("<script>alert('Error: Student with the given Roll Number not found!');</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('Exception occurred! Please try again.');</script>");
    }
%>