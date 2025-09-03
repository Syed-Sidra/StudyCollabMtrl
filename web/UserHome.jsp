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
            body {
                font-family: Arial, sans-serif;
                background:  linear-gradient(70deg,#f0f8ff,#84d2ee,#a2c2f1);

                margin: 0;
            }

            div{
                display:table-row;
            }
            header {
                background: #4CAF50;
                color: white;
                padding: 15px;
                text-align: right;
            }

            header h2 {
                float: left;
                margin: 0;
            }

            .sidebar {
                width: 200px;
                background: #2c3e50;
                height: 100vh;
                position: fixed;
                top: 0;
                left: 0;
                padding-top: 60px;
            }

            .sidebar a {
                display: block;
                padding: 15px;
                color: white;
                text-decoration: none;
            }

            .sidebar a:hover {
                background: #34495e;
            }

            .main {
                margin-left: 220px;
                padding: 20px;
            }

            .card {
                background: white;
                padding: 20px;
                margin: 20px;
                border-radius: 10px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.2);
                display: inline-block;
                width: 250px;
                vertical-align: top;
            }

            .card h3 {
                margin-top: 0;
            }

            .btn {
                display: inline-block;
                padding: 10px 15px;
                background: #4CAF50;
                color: white;
                border-radius: 5px;
                text-decoration: none;
            }

            .btn:hover {
                background: #45a049;
            }


        </style>
    </head>
    <body>
        <%
            HttpSession ses = request.getSession(false);
            if (ses == null || ses.getAttribute("name") == null) {
                response.sendRedirect("login.jsp"); // agar login nhi hai to login page
            }
        %>
    <center>
        <h2>Welcome, <%= ses.getAttribute("name")%></h2>
    </center>
    <div class="card">
        <h3>Search Files</h3>
        <p>Find your uploaded documents easily.</p>
        <a href="search.jsp" class="btn">Go to Search</a>
    </div>

    <div class="card">
        <h3>Upload File</h3>
        <p>Upload your documents in PDF format.</p>
        <a href="upload.jsp" class="btn">Upload Now</a>
    </div>

    <div class="card">
        <h3>Profile</h3>
        <p>Update your personal details.</p>
        <a href="profile.jsp" class="btn">Edit Profile</a>
    </div>

    <div class="card">
        <h3>Change Password</h3>
        <p>Secure your account by updating password.</p>
        <a href="changePassword.jsp" class="btn">Change</a>
    </div>

</body>
</html>