<%@page import="java.util.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
    String username=request.getParameter("username");
    
    String password=request.getParameter("password");
    
    String email=request.getParameter("email");
    
    String dob=request.getParameter("dob");
    String gender=request.getParameter("gender");
    String department=request.getParameter("department");
    String address=request.getParameter("address");
    String mobno=request.getParameter("mobno");
    
    //out.println(mobno);
    try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","ak2192");
           PreparedStatement pstmt=con.prepareStatement("insert into ownerreg values(?,?,?,?,?,?,?,?,DEFAULT)");
           pstmt.setString(1, username);
           pstmt.setString(2, password);
           pstmt.setString(3, email);
           pstmt.setString(4, dob);
           pstmt.setString(5, gender);
           pstmt.setString(6, department);
           pstmt.setString(7, address);
           pstmt.setString(8, mobno);
          
           int r=pstmt.executeUpdate();
           if(r>0)
           {
%>
<%
           //give popup 
           response.sendRedirect("OwnerLogin.html");
           }
           else
           {
%>           <H1>Error While Registering</H1>
<%         }
} catch(Exception e)
{}
%>
                
       