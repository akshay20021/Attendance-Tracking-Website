<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
<%
  int rollno=Integer.parseInt(request.getParameter("rollno"));
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","ak2192");
           PreparedStatement pstmt=con.prepareStatement("delete from record where rollno=?");
           pstmt.setInt(1, rollno);
           
           int r=pstmt.executeUpdate();
           if(r>0)
           {
               %>
               <H1>Record Deleted</H1>
               <a href="showrec.jsp">Show Data</a>
               <%
           }
           else
           {
               %>
               <H2>Error while deleting records</H2>
               <%
           }  
%>
                </div>
        </div>