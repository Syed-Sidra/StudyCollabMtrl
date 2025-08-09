<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to StudyCollab</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="index.css" rel="stylesheet" type="text/css">

        <!-- Bootstrap CSS -->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Bootstrap Icons -->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    </head>
    <body class="index">
        <div id="mainHome" class="w-100">

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
                <div class="about1 col-sm-12">
                    <div class="about w-50 col-sm-12">
                        About Us <br> 
                        <div id="a1" class="m-5 w-100 col-sm-12"> <font color="blue"> Let's Learn, Upload, Collaborate to help each other for better understanding </font><br> <br>
                            This platform is basically a <b>Study Collaborative Platform</b> designed to help, grow and learn together. You may see notes, assignments, PYQ's, practical files and many more things in this website.</div>

                    </div>
                </div>
            </div>

            <!--Contact Us-->

            <div id="contactus"> Contact Us
                <div class="contactform container w-50" >
                    <form id="contact" action="SendMailServlet" method="post">
                        <label>Name : </label> 
                        <input type="text" name="username" placeholder="Enter Name" class="t" required> <br><br>
                        <label>Contact Number :</label> 
                        <input type="number" name="contact" class="t" placeholder="Enter Contact Number"required> <br><br>
                        <label>Email Id :</label>
                        <input type="email" name="useremail" class="t" placeholder="Enter Email Id"> <br><br>
                        <label style="margin-bottom: 10px;">Message :</label> 
                        <textarea name="mess" style="resize: none; " class="t" required placeholder="Write your Message"></textarea> <br>
                        <button type="submit" style="background: #a2c2f1; border-radius:20px;">Send </button>
                    </form>
                </div>

                <!-- Bootstrap Footer Start -->

                <footer class="bg-dark text-white pt-4 pb-3 mt-5 foot">
                    <div class="container">
                        <div class="row">

                            <!-- Quick Links -->

                            <div class="col-md-3">
                                <h5>Quick Links</h5>
                                <ul class="list-unstyled">
                                    <li><a href="index.jsp" class="text-white" style="font-size: 20px;">Home</a></li>
                                    <li><a href="#aboutus" class="text-white" style="font-size: 20px;">About Us</a></li>
                                    <li><a href="#contactus" class="text-white" style="font-size: 20px;">Contact Us</a></li>
                                    <li><a href="login.jsp" class="text-white" style="font-size: 20px;">Login</a></li>
                                </ul>
                            </div>

                            <!-- Contact Info -->

                            <div class="col-md-3" >
                                <h5>Contact Us</h5>
                                <p style="font-size: 20px;">Email: sn0255724@gmail.com</p>
                                <p style="font-size: 20px;">Phone: +91-7007XXXXXX</p>
                                <p style="font-size: 20px;">Lucknow, UP, India</p>
                            </div>

                            <!-- Social Media -->

                            <div class="col-md-3">
                                <h5>Follow Us</h5>
                                <a href="#" class="text-white me-2" style="font-size: 20px;"><i class="bi bi-instagram"></i> Instagram</a><br>
                                <a href="#" class="text-white me-2"style="font-size: 20px;"><i class="bi bi-linkedin"></i> LinkedIn</a><br>
                                <a href="#" class="text-white" style="font-size: 20px;"><i class="bi bi-github"></i> GitHub</a>
                            </div>

                            <!-- Policies -->

                            <div class="col-md-3">
                                <h5>Legal</h5>
                                <ul class="list-unstyled" style="font-size: 20px;">
                                    <li><a href="#" class="text-white">Privacy Policy</a></li>
                                    <li><a href="#" class="text-white">Terms & Conditions</a></li>
                                </ul>
                            </div>

                        </div>

                        <hr class="bg-light">
                        <div class="text-center" style="font-size: 20px;">
                            <p class="mb-0">&copy; 2025 StudyCollab. All rights reserved.</p>
                        </div>
                    </div>
                </footer>

                <!-- Bootstrap Footer End -->

            </div>           
        </div>

        <!--Java Script for dynamic typing--> 

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
