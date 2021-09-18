<%-- 
    Document   : loginPage
    Created on : Sep 16, 2021, 9:02:53 AM
    Author     : Sasitha Munasinghe
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Technology</title>
    </head>

   <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://s3-eu-central-1.amazonaws.com/centaur-wp/theengineer/prod/content/uploads/2016/09/02092317/IOT-29774.jpg') ">

        

        <h1 style="text-align: center;font-weight: bolder;font-size: 50px">Epic Technology</h1>
        <hr>
       <center> <img style="border-radius: 100px;" src="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  alt="..." class="img-thumbnail"></center>
        <div class="container" style="background-color: lightsteelblue;;border-radius: 20px;margin-top: 20px"> 

            <form action="loginaction.jsp" method="post" style="padding: 30px">
                <div class="form-group">
                    <label >Username :</label>
                    <input type="text" class="form-control" name="username"  placeholder="Enter Username" required>

                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Enter Password" required>
                </div>

                <button type="submit" class="btn btn-primary">Login</button>
                <a href="RegisterPage.jsp">Register</a>
            </form>
            
        </div>
    </body>
</html>
