<%-- 
    Document   : EmployeeList
    Created on : Sep 15, 2021, 9:23:11 AM
    Author     : Sasitha Munasinghe
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.1/css/jquery.dataTables.min.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Struts2</title>
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
        
       
        
        <div class="container" style="padding:20px;border-radius: 20px">
            <table class="table-primary" id="sasi"  align="center" style="border-radius: 20px" >
                <thead>
                    <tr style="background-color: lightsteelblue">
                        <th scope="col">Employee ID</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Login User</th>
                        <th scope="col">Login Admin </th>
                        <th scope="col">Date Time</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <s:iterator value="employeeList">
                        <tr>
                            <th scope="row"><s:property value="empid"/></th>
                            <td><s:property value="firstname"/></td>
                            <td><s:property value="lastname"/></td>
                            <td><s:property value="email"/></td>
                            <td><s:property value="loginUser"/></td>
                            <td><s:property value="loginAdmin"/></td>

                            <td><s:property value="datetime"/></td>
                            <td>
                                <a href="editEmp.action?empid=<s:property value="empid"/>">
                                    <button class="btn btn-primary">Edit</button>
                                </a>
                            </td>
                            <td>
                                <a onclick="return confirm('Are You want to Delete?')" href="deleteEmp.action?empid=<s:property value="empid"/>">
                                    <button class="btn btn-danger">Delete</button>
                                </a>
                            </td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table>
            <script>
                $(document).ready(function () {
                    $('#sasi').DataTable();
                });
            </script>
        </div>
    </body>
</html>
