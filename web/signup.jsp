<%-- 
    Document   : signup
    Created on : Aug 10, 2025, 6:38:16 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <h1 class=" text-dark text-center pt-4 h">  SIGNUP </h1>
            <div class="row">

                <div class="col-sm-4"></div>
                <div class="col-sm-4 my-4 rounded-2 p-4 box1" style="min-height: 400px">
                    <form action="SignupServlet" method="post">
                        <label class="fs-4">Username:</label> <br>
                        <input type="text" placeholder="Username"class="mt-2 w-100 box"name="name"> <br>
                        <label class="fs-4">Email:</label> <br>
                        <input type="email" placeholder="Email"class="mt-2 w-100 box"name="email"> <br>
                        <label class="fs-4">Contact Number:</label> <br>
                        <input type="number" placeholder="Contact Number"class="mt-2 w-100 box"name="contact"> <br>
                        <label class="fs-4 mt-2" >Password: </label> <br>
                        <input type="password" placeholder="Set your Password"class="mt-2 w-100 box " name="password"> <br>

                        <button type="submit" class="mt-3 bg-info p-2 btn w-100 fs-5"><b>SIGNUP</b></button><br>
                        <h5 class="mt-3 text-center">Already have an account <a href="login.jsp">click here</a></h5>
                    </form>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
    </body>
</html>
