<%-- 
    Document   : addEmployee
    Created on : Sep 15, 2021, 8:37:18 AM
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
        <h1>Add Employee</h1>
        <hr>
        <s:if test="sm !=null">
            <font color="green">
            <s:property value="sm"/>
            </font>
        </s:if>
        
        <s:if test="em !=null">
            <font color="red">
            <s:property value="em"/>
            </font>
        </s:if>
        
        <s:form action="saveProduct" method="POST">
            <s:textfield name="employee.firstname" label="Fisrt Name"></s:textfield>
            <s:textfield name="employee.lastname" label="Last Name"></s:textfield>
            <s:textfield name="employee.email" label="Email"></s:textfield>
            <s:submit value="Add"/>
        </s:form>
            
            <a href="listPage.action"><button>Employee List</button></a>
    </body>
</html>
