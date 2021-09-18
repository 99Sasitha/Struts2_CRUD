<%-- 
    Document   : RegisterPage
    Created on : Sep 16, 2021, 10:24:25 AM
    Author     : Sasitha Munasinghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    <head>
<link rel="icon" href="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Technology</title>
    </head>
    <h1 style="text-align: center;font-weight: bolder;">Register Page</h1>
        <hr>
        
    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://s3-eu-central-1.amazonaws.com/centaur-wp/theengineer/prod/content/uploads/2016/09/02092317/IOT-29774.jpg') ">
        <center> <img style="border-radius: 100px;" src="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  alt="..." class="img-thumbnail"></center>
        <div class="container" style="background-color: lightgoldenrodyellow;border-radius: 20px;margin-top: 10px">
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
        
        
        <form action="Register" method="POST" style="padding:30px">
  <div class="form-group">
    <label >Username :</label>
    <input type="text" class="form-control" name="register.username"  placeholder="Enter Username" required>
    
  </div>
            
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="register.password" placeholder="Enter Password" required>
  </div>
  
  <button type="submit" class="btn btn-primary">Register</button>
  <a href="loginPage.jsp">Already have Account?</a>
</form>
        </div>
    </body>
</html>
