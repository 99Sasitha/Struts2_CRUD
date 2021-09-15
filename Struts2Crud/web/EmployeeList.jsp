<%-- 
    Document   : EmployeeList
    Created on : Sep 15, 2021, 9:23:11 AM
    Author     : Sasitha Munasinghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Struts2</title>
    </head>
    <body>
        <h1>Employee List</h1>
        <hr>
        <table align="center" border="1">
            <thead>
                <tr>
                    <th>Employee ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="employeeList">
                    <tr>
                        <td><s:property value="empid"/></td>
                        <td><s:property value="firstname"/></td>
                        <td><s:property value="lastname"/></td>
                        <td><s:property value="email"/></td>
                        <td>
                            <a href="editEmp.action?empid=<s:property value="empid"/>">
                                <button>Edit</button>
                            </a>
                        </td>
                        <td>
                            <a href="deleteEmp.action?empid=<s:property value="empid"/>">
                                <button>Delete</button>
                            </a>
                        </td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>

    </body>
</html>
