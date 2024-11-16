<%@page import="java.sql.*" %>
<%@page import="com.resultmanagement.database.ConnectionProvider" %>

<%
String rollNo = request.getParameter("rollNo");
try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("DELETE FROM result WHERE regdNo = ?");
    ps.setString(1, rollNo);
    int rowsAffected = ps.executeUpdate();
    
    if (rowsAffected > 0) {
        // Redirect to a confirmation page or back to results list
        response.sendRedirect("adminHome.jsp?message=Result deleted successfully."); // Add a message if needed
    } else {
        // No rows affected, meaning the rollNo was not found
        response.sendRedirect("adminHome.jsp?message=No result found with the provided roll number.");
    }
} catch (Exception e) {
    e.printStackTrace();
    out.println("Error: " + e.getMessage());
}
%>
