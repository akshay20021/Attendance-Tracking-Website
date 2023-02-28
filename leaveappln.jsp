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
           String rollno=request.getParameter("rollno");
           String appln=request.getParameter("appln");
          
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","ak2192");
           PreparedStatement pstmt=con.prepareStatement("update record set appln='"+appln+"' where rollno='"+rollno+"'");
          
           int r=pstmt.executeUpdate();
           if(r>0)
           {
%>              <h1>Application Sent Successful</h1>
               
<%         }
           else
           {
%>               <h2>Error while sending application</h2>
<%           }
%>
                </div>
        </div>