<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
           String dbms=request.getParameter("dbms");
           String spos=request.getParameter("spos");
           String cns=request.getParameter("cns");
           String iot=request.getParameter("iot");
           String toc=request.getParameter("toc");
          
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","ak2192");
           PreparedStatement pstmt=con.prepareStatement("insert into record values(?,?,?,?)");
           pstmt.setString(7,rollno);
           pstmt.setString(1,dbms);
           pstmt.setString(2,spos);
           pstmt.setString(3,iot);
          pstmt.setString(4,cns);
          pstmt.setString(5,toc);
          
          
          
           int r=pstmt.executeUpdate();
           if(r>0)
           {%>
           <h1>Record Inserted Successfully</h1>
           <a href="showrec.jsp">Show Data</a>
           <%}
           else
           {%>
           <h2>Error inserting records</h2>
           <%}%>
                </div>
        </div>