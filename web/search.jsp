<%-- 
    Document   : search
    Created on : Aug 15, 2025, 8:07:00 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <title>JSP Page</title>
        <style>
            .bd{
                 background:  linear-gradient(70deg,#f0f8ff,#84d2ee,#a2c2f1);
            }
            .box{
                 padding-left: 10px;
                border-radius: 5px;
               
            }
            .box1{
                  box-shadow: 0px 0px 10px 2px buttontext;
                  
            }
        </style>
    </head>
    <body>
        <div class="container-fluid bg-dark bd" style="min-height:700px;">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 p-4 rounded-4 box1 mt-5" style="min-height: 400px;">
                    <form method="get" action="SearchServlet">
                        <h2 class="text-center pt-4">What You want ???</h2>
                         <label class="fs-4 mt-2 p-2 " >Branch : </label> <br>
                          <select class="w-75 mt-2 box p-2 rounded-2" name="branch">
                        <option>CSE</option>
                        <option>AI & DS</option>
                        <option>AI & ML</option>
                        <option>Civil</option>
                        <option>Mechanical</option>
                        <option>Biotechnology</option>
                    </select> <br>
                        <label class="fs-4 mt-2 p-2 " >Select</label> <br>
                    <select class="w-75 mt-2 box p-2 rounded-2" name="title">
                        <option>Notes</option>
                        <option>Assignment</option>
                        <option>PYQ's</option>
                    </select> <br>
                    <label class="fs-4 mt-2 p-2 " >Semester : </label> <br>
                    <input type="text" name="sem" placeholder="Enter your Semester" class="box w-75 mt-2 box p-2 rounded-2">
                    <button type="submit" class="mt-3 bg-info p-2 btn w-100 fs-5"><b>SEARCH</b></button>

                    </form>
                    
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
    </body>
</html>
