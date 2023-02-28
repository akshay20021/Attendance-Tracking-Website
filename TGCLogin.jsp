<%
    String Username=request.getParameter("UserName");
    String Password=request.getParameter("Password");
          if((Username.equals("admin")) && (Password.equals("admin") ) )
            {
                response.sendRedirect("TGCOperations.html");
%>
<h1>Login Successful..!!</h1>
<%
            }
else
{
%>
<h1>Invalid Login..!!</h1>
<%
}
%>