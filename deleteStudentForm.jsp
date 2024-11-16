<%@page import="java.sql.*" %>
<%@page import="com.resultmanagement.database.ConnectionProvider" %>

<%
String regdNo = request.getParameter("rollNo");
try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("DELETE FROM student WHERE regdNo = ?");
    ps.setString(1, regdNo);
    ps.executeUpdate();
    response.sendRedirect("adminHome.jsp"); // Redirect back to the main admin page after deletion
} catch (Exception e) {
    e.printStackTrace();
    out.println("Error: " + e.getMessage());
}
%>
