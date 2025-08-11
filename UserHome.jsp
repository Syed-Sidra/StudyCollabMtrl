<%-- 
    Document   : UserLogin
    Created on : 30 Jul, 2025, 10:29:25 PM
    Author     : ASUS
--%>

<<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* CSS RESET  */
        body{
            margin: 0px;
            padding: 0px;
           background:  linear-gradient(70deg,#f0f8ff,#84d2ee,#a2c2f1);
            background-repeat:no-repeat ;
           background-size: 2450px 1300px;
           
             
           
        }
        .navbar
        {
         display: inline-block;
         border: 0px solid white;
        margin-left: 2%;
         margin-top: 0px;
         border-radius: 7px;
         /* position: fixed; */
        }
        .navbar li{
            display: inline-block;
             
        
        }
        .navbar li a{
            color:black;
            font-size: 40px;
            padding:  80px;
            text-decoration:#000000; 
        }
        .navbar li a:hover{
           
            color: red;
            font-size: 33px;
            padding:  60px;
            text-decoration: none; 
            transition-duration: 1s;
        }

    
    </style>
</head>
<body><center>
    <header>
        
        <div class="navbar">
        <ul>
        <li><a href=" UserProfile.jsp"> Profile</a> </li>
          <li><a href=" UploadDocuments.jsp"> Upload</a> </li>
        <li><a href="SearchDocuments.jsp">Search</a></li>
        <li><a href="Download.jsp">Download</a></li>
        <li><a href="UserChangePswd.jsp">Change Password</a></li>
        <li><a href="Logout">Logout</a></li>
        </ul>
    </div><hr>
    </header>
    </center>
</body>
</html>