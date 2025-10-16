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
        <title>Change Password</title>
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
            <h1 class=" text-dark text-center pt-4 h">  Change Password </h1>
            <div class="row">

                <div class="col-sm-4"></div>
                <div class="col-sm-4 my-4 rounded-2 p-4 box1" style="min-height: 400px">
                    <form action="ChangePasswordServlet" method="post">
                        <label class="fs-4">Old Password:</label> <br>
                        <input type="password" placeholder="Old Password"class="mt-2 w-100 box"name="oldpass"> <br>
                        <label class="fs-4">New Password:</label> <br>
                        <input type="password" placeholder="New Password"class="mt-2 w-100 box"name="newpass"> <br>
                        <label class="fs-4">Confirm New Password:</label> <br>
                        <input type="password" placeholder="Confirm New Password"class="mt-2 w-100 box"name="confirm"> <br>
                        
                        <button type="submit" class="mt-3 bg-info p-2 btn w-100 fs-5"><b>UPDATE</b></button><br>
                    </form>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
    </body>
</html>
