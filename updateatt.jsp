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
           String spos=request.getParameter("spos");
           String cns=request.getParameter("cns");
           String iot=request.getParameter("iot");
           String toc=request.getParameter("toc");
           String dbms=request.getParameter("dbms");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","ak2192");
           PreparedStatement pstmt=con.prepareStatement("update record set spos='"+spos+"', cns='"+ cns+"', iot='"+iot+"', toc='"+ toc+"', dbms='"+dbms+"' where rollno='"+rollno+"'");
          
           int r =pstmt.executeUpdate();
           if(r>0)
           {
%>              <h1>Record Updated Successfully</h1>
                <a href="http://localhost:8084/AttendanceTrack/showrec.jsp">Show Data</a>
<%         }
           else
           {
%>               <h2>Error while updating records</h2>
<%           }
%>
                </div>
        </div>