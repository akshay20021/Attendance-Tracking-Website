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
            <form action = delete.jsp>
            <% 
             
             if (rs.next()) 
             {
                 int s= rs.getInt("rollno");
                 String dbms= rs.getString("dbms");
                 String spos= rs.getString("spos");
                 String cns= rs.getString("cns");
                 String toc= rs.getString("toc");
                 String iot= rs.getString("iot");
                 
            %>     
                <input type='text' name='rollno' value="<%=rs.getInt("rollno")%>">
                <input type='text' name='dbms' value="<%=rs.getString("dbms")%>">
                <input type='text' name='spos' value="<%=rs.getString("spos")%>">
                <input type='text' name='spos' value="<%=rs.getString("cns")%>">
                <input type='text' name='spos' value="<%=rs.getString("iot")%>">
                <input type='text' name='spos' value="<%=rs.getString("toc")%>">
                <input type='submit' value='Delete'/>
            <%
             }
             else
             {
             %>
             <h1>Error</h1>
             <%
             }
             %>
            </form>
                </div>
        </div>
            