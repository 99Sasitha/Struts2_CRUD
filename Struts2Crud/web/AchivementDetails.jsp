<%-- 
    Document   : AchivementDetails
    Created on : Sep 18, 2021, 7:05:31 PM
    Author     : Sasitha Munasinghe
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="icon" href="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Technology</title>
    </head>
    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://backgroundcheckall.com/wp-content/uploads/2018/10/background-teknologi-white-6.jpg') ">
        <nav class="nav nav-pills nav-fill" style="margin-top: 15px;color:white;padding:10px;background-color: lightsteelblue;">
  <a class="nav-item nav-link" href="AdminaddEmployee.jsp"style="border-right: gray;border-style: inset;margin-right: 10px;background-color:whitesmoke">Add Employee</a>
  
  <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");

                } catch (Exception e) {

                    out.println(e);
                }

            %>
            
             <%        try {

                    Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3308/epicstruts2", "root", "");
                    Statement stm3 = con3.createStatement();
                    String sql3 = "SELECT * FROM adminpages";
                    ResultSet rs3 = stm3.executeQuery(sql3);
                    while (rs3.next()) {
                        //            String bookid=rs.getString("bookid");

            %>
  <a class="nav-item nav-link" href="<%=rs3.getString("pageurl")%>" style="border-right: gray;border-style: inset;margin-right: 10px;background-color:whitesmoke"><%=rs3.getString("pagename")%></a>
  
   <%
                    }
                } catch (Exception e) {

                    out.println(e);
                }
            %>
            
            <form action="logoutAction.jsp">
                <button class="btn btn-danger">__Log Out__</button>
            </form>
</nav>
        <%
            response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);

            if (session.getAttribute("username") == null && session.getAttribute("userRole") == null) {

                response.sendRedirect("loginPage.jsp");
            }

        %>
        <h1>Achievement Details </h1>
    </body>
</html>
