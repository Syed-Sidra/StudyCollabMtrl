<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to StudyCollab</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="index.css" rel="stylesheet" type="text/css">
    </head>
    <body class="index">
        <div id="mainHome">

            <!--Nav Bar -->

            <div class="nav">
                <div id="n1"></div>
                <div id="n2">
                    <ul>
                        <a href="#"><li>Home</li></a>
                        <a href="#aboutus"><li>About Us</li></a>
                        <a href="#contactus"><li>Contact Us</li></a>
                        <a href="#"><li>Login</li></a>
                        <a href="#"><li>SignUp</li></a>
                        <a href="#"><li>Admin</li></a>
                    </ul>
                </div>
            </div>

            <!--Home Page -->

            <div class="img" id="home">
                <div class="introImg">
                    <h1>LET'S </h1>

                    <div class="featured-name">
                        <span class="typedText"></span>
                    </div>
                    <h3>TOGETHER</h3>
                </div>
            </div>

            <!--About Us Page-->

            <div id="aboutus"> 
                <div class="about1">
                    <div class="about">
                        About Us <br> <br>
                        <div class="a1"> <font color="blue"> Let's Learn, Upload, Collaborate to help each other for better understanding </font><br> <br>
                            This platform is basically a <b>Study Collaborative Platform</b> designed to help, grow and learn together. You may see notes, assignments, PYQ's, practical files and many more things in this website.</div>

                    </div>
                </div>
            </div>
            
            <!--Contact Us-->
            <div id="contactus"> Contact Us
                <div class="contactform">
                    
                </div>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.1.0/typed.umd.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/scrollReveal.js/4.0.9/scrollreveal.min.js"></script>
        <script>
            var typingEffect = new Typed(".typedText", {
                strings: ["COLLABORATE", "LEARN", "UPLOAD"],
                loop: true,
                typeSpeed: 100,
                backSpeed: 80,
                backDelay: 2000,
            })

            const sr = ScrollReveal({
                origin: "top",
                distance: "20px",
                duration: 2000,
                reset: true,
            });

            sr.reveal(".featured-name", {delay: 100});

        </script>
    </body>
</html>
