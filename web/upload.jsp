<%-- 
    Document   : upload.jsp
    Created on : Aug 6, 2025, 5:51:56 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        </style>
    </head>
    <body>
        <div class="container-fluid" style="min-height: 600px" >
            <h1 class=" text-dark text-center pt-4">  Upload Here!!!! </h1>
            <div class="row">
               
                <div class="col-sm-4"></div>
                <div class="col-sm-4 bg-light my-5 rounded-2 p-4 box1" style="height: 500px">
                    <form action="UploadServlet" method="post">
                    <label class="fs-4">Uploaded by:</label> <br>
                    <input type="text" placeholder="Your Name"class="mt-2 w-100 box"name="name"> <br>
                    <label class="fs-4 mt-2" >Title</label> <br>
                    <select class="w-100 mt-2 box" name="title">
                        <option>Notes</option>
                        <option>Assignment</option>
                        <option>PYQ's</option>
                        <option></option>
                    </select> <br>
                    <label class="fs-4 mt-2">Subject:</label> <br>
                    <input type="text" placeholder="Subject Name"class="mt-2 w-100 box " name="subject"> <br>
                    <label class="fs-4 mt-2">File:</label> <br>
                    <input type="file" enctype="multipart/form-data" class="mt-2 w-100 box" name="file"> <br>
                    <button type="submit" class="mt-3 bg-info p-2 btn w-100 fs-5"><b>Upload</b></button>
                    </form>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
    </body>
</html>
