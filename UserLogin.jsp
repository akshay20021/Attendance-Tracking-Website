<%-- 
    Document   : DataOwnerLogin
    Created on : 2 Nov, 2022, 9:17:36 AM
    Author     : dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "ak2192");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from userreg where username='" + username + "' AND password='" + password + "'");
    if (rs.next()) {
%>
<h2> Login Successful</h2>
<%
    response.sendRedirect("UserOperations.html");
    }
    else {
%>
<h2> Please Enter correct username and password</h2>
<%
}
    

%>
