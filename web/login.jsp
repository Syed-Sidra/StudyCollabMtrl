<%-- 
    Document   : adminLogin
    Created on : Aug 6, 2025, 10:09:30 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
           .box{
                height: 35px;
                padding-left: 10px;
                border-radius: 5px;
            }         
            body{
                 background:  linear-gradient(70deg,#f0f8ff,#84d2ee,#a2c2f1);
               }
               .box1{
                   box-shadow: 0px 0px 10px 2px buttontext;
               }
               .h{
                   margin-top: 50px;
               }
            
        </style>
       
    </head>
    <body>
        <div class="container-fluid" style="min-height: 600px" >
            <h1 class=" text-dark text-center pt-4 h">  LOGIN </h1>
            <div class="row">
               
                <div class="col-sm-4"></div>
                <div class="col-sm-4 my-5 rounded-2 p-4 box1" style="height: 300px">
                    <form action="LoginServlet" method="post">
                    <label class="fs-4">Username:</label> <br>
                    <input type="text" placeholder="Username"class="mt-2 w-100 box"name="name"> <br>
                    <label class="fs-4 mt-2" >Password: </label> <br>
                    
                    <input type="password" placeholder="Password"class="mt-2 w-100 box " name="password"> <br>
                  
                    <button type="submit" class="mt-3 bg-info p-2 btn w-100 fs-5"><b>LOGIN</b></button> <br>
                    <h6 class="mt-2 text-center">Create an account <a href="signup.jsp">click here</a></h6>
                    

                    </form>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
    </body>
</html>
