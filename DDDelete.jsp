<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance", "root", "ak2192");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select rollno from record");

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
        <form action="deleteSearch.jsp">
            <label>Choose Roll Number</label>
            <select name="rollno">
                <%    while (rs.next()) 
                    {
                %>

                <option><%=rs.getInt("rollno")%></option>
                <%
                    }
                %>
                <input type="submit" value="Search for Delete">
            </select>
        </form>
                </div>
        </div>