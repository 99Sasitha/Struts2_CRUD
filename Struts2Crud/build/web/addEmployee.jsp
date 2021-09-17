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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Struts2</title>
    </head>
    <body>
        <h1> User Add Employee</h1>
        <hr>
        <div class="container" style="background-color: lightgray;padding: 25px;border-radius: 20px">
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

            
        <form action="saveProduct" method="POST">
            
            
            <label>Current Log in User Name :</label>
            <select name="employee.username">
                <option value="<%=request.getAttribute("username")%>"><%=request.getAttribute("username")%></option>
                
            </select>
            
            
            <div class="form-group">
                <label>First Name :</label>
                <input type="text" class="form-control" name="employee.firstname" placeholder="Enter First Name" required>
            </div>
            
            <div class="form-group">
                <label>Last Name :</label>
                <input type="text" class="form-control" name="employee.lastname" placeholder="Enter Last Name" required>
            </div>
            
            <div class="form-group">
                <label >Email address</label>
                <input type="email" class="form-control" name="employee.email" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>

            
            <button type="submit" class="btn btn-primary">Add</button>
        </form>
</div>
        

        <a href="listPage.action"><button>Employee List</button></a>
    </body>
</html>
