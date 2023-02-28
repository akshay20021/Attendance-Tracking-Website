<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
           int rollno=Integer.parseInt(request.getParameter("rollno"));
                      
           Class.forName("com.mysql.jdbc.Driver");
           
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","ak2192");
           
           Statement stmt = con.createStatement();  
           ResultSet rs = stmt.executeQuery("select * from record where rollno='"+rollno+"'");
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
        <form action="updateatt.jsp">
<%                          
             if (rs.next()) 
             {
%>
RollNo: <input type='text' name='rollno' value="<%=rs.getInt("rollno")%>"><br>
               SPOS: <input type='text' name='spos' value="<%=rs.getString("spos")%>"><br>
                CNS:<input type='text' name='cns' value="<%=rs.getString("cns")%>"><br>
                IOT:<input type='text' name='iot' value="<%=rs.getString("iot")%>"><br>
                TOC:<input type='text' name='toc' value="<%=rs.getString("toc")%>"><br>
                DBMS:<input type='text' name='dbms' value="<%=rs.getString("dbms")%>"><br>
                <input type='submit' value='Update'>
                
<%             }
            else      
               {
%> <h1>Enter right roll number</h1>
<%             }
%>
        </form>
                </div>
        </div>