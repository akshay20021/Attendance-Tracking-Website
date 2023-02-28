<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project? autoReconnnect=true & use SSL=false","root","ak2192");
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select * from userreg");
%>
<style>
    h1{
       text-align: center;
    }
    body{
        background-color: lightgoldenrodyellow;
    }
    .table{
        background-color: white;    
    }
</style>
<h1>Student Details</h1>
<table class="table" border=5 width=50% height=50% align="center">
    <tr>
        <th>User Name</th>
        <th>Email</th>
        <th>DOB</th>
        <th>Gender</th>
        <th>Location</th>
        <th>Contact Number</th>
    </tr>
<%
        while(rs.next()) //While loop for printing all records in database 
        {
//           int s=rs.getInt("Rollno");    we made a short code
//           String n=rs.getString("fname");
//           String nm=rs.getString("lname");
%>
    <tr>
        <td><input type="text" value="<%=rs.getString("username")%>"</td>
        <td><input type="text" value="<%=rs.getString("email")%>"</td>
        <td><input type="text" value="<%=rs.getString("dob")%>"</td>
        <td><input type="text" value="<%=rs.getString("gender")%>"</td>
        <td><input type="text" value="<%=rs.getString("address")%>"</td>
        <td><input type="text" value="<%=rs.getString("mobno")%>"</td>
        
       
        
    </tr>
<% 
    }
%>
</table>

