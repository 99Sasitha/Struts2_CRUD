<%-- 
    Document   : EditEmployeePage
    Created on : Sep 15, 2021, 8:37:18 AM
    Author     : Sasitha Munasinghe
--%>

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
       <link rel="icon" href="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Struts2</title>
    </head>
    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://backgroundcheckall.com/wp-content/uploads/2018/10/background-teknologi-white-6.jpg') ">
        <h1 style="text-align: center;font-weight: bolder">Edit Employee</h1>
        <hr>
        <div class="container" style="background-color: lightsteelblue;;border-radius: 20px;margin-top: 20px"> 
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
        
        <s:form action="updateEmp" method="POST" style="padding:15px">
            <s:textfield name="employee.empid" label="Employee ID" require="true"></s:textfield>
            <s:textfield name="employee.firstname" label="Fisrt Name" require="true"></s:textfield>
            <s:textfield name="employee.lastname" label="Last Name" require="true"></s:textfield>
            <s:textfield name="employee.email" label="Email" require="true"></s:textfield>
            <s:submit style="background-color:green;color:white" value="Update"/>
           <a href="listPage.action"> <button class="btb btn-danger">Cancel</button></a>
        </s:form>
            
<!--            <a href="listPage.action"><button>Employee List</button></a>-->
            </div>
    </body>
</html>
