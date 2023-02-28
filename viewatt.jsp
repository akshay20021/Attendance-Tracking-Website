<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%        
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance?autoReconnect=true&useSSL=false","root","ak2192");  
            Statement stmt = con.createStatement();  
            ResultSet rs = stmt.executeQuery("select * from record"); 
%>       
        <style>
            body{
                background-color: powderblue;
                padding: 200px;
            }
            .content{max-width: 400px;
            margin: auto;
            background: lightgoldenrodyellow;
            padding: 20px;}
        </style>
        <div class="content"> 
                <div class="center">
        <table border=1 width=30% height=40% align="center">
            <tr>
                <th>Roll No</th>
                 <th>DBMS</th>
                <th>SPOS</th>
                <th>IOT</th>
                <th>CNS</th>
                <th>TOC</th>
                 
            <tr>
<%
             while (rs.next()) 
             {  
%>                 
                <tr>
                    <td><%=rs.getInt("rollno")%></td>
                    <td><%=rs.getString("dbms")%></td>
                    <td><%=rs.getString("spos")%></td>
                    <td><%=rs.getString("iot")%></td>
                    <td><%=rs.getString("cns")%></td>
                    <td><%=rs.getString("toc")%></td>
                </tr>
<%             }  
%>           </table>
            

                </div>
        </div>

 