<!DOCTYPE html>
<html lang="en">

<head>
    <title>Anti-Collision_Data_Sharing</title>
    <meta charset="utf-8">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet" href="styles.css">
    
    
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.1.1.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/superfish.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/jquery.ui.totop.js"></script>


        <!-- //////// -->
        <script src="js/camera.js"></script>
        <!--[if (gt IE 9)|!(IE)]><!-->
            <script src="js/jquery.mobile.customized.min.js"></script>
        <!--<![endif]-->
        <script src="js/jquery.equalheights.js"></script>
    <!--[if lt IE 8]>
    	<div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/img/upgrade.jpg"border="0"alt=""/></a></div>  
    <![endif]-->
</head>
<!--  -->
<body>
    <div style="height: 600px;background-color: white">
    <!-- header -->
    <header>
        <div class="wrap extraBg2">
            <div class="container">
                <h1 class="brand"><a href="#" class="logo">A Secure Anti-Collusion Data Sharing Scheme for Dynamic Groups in the Cloud</a></h1>
            </div>
        </div>
         <div class="extraBg3">
            <div class="container">
                <!--menu-->
                <div class="navbar">
                     <div class="navbar-inner"> 
                         <div class="nav-collapse nav-collapse_ collapse" style="margin-left: 200px">
                            <ul class="sf-menu">
                                <li><a href="index.html"><div class="base_text">Home</div><div class="over"></div></a></li>
                                <li class="active"><a href="GroupManager.jsp"><div class="base_text">Group Manager</div><div class="over"></div></a></li>
                                <li><a href="member_login.jsp"><div class="base_text">Group Members</div><div class="over"></div></a></li>
                                <li><a href="register.jsp"><div class="base_text">Member Register</div><div class="over"></div></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- content -->
    <div style="width: 100%; height: 500px;background-image: url('img/banhm.jpg')">
        <br><br><div class="section_01_left" style="margin-left: 550px;">
            <div style="border:solid 2px;border-radius: 9px;border-color: white;height: 300px;width: 300px;padding: 50px;margin-left: -120px;">
                <p style="font-family: monospace; font-size: xx-large;color: white">Group Manager Login </p>
                <div>
                    <form action ="Gr_man" method="get">
                        <p style="font-family: fantasy;color: white">Username</p>
                        <p><input type="text" name="username" style="height:25px;width:220px;"/></p>
                        <p style="font-family: fantasy;color: white">Password</p>
                        <p><input type="password"  style="height:25px;width:220px" name="password"/></p>
                        <p></p>
                        <p ><input type="submit" value="Submit" style="height:25px;width:100px;font-family: cursive" /> <input type="reset" value="Cancel" style="height:25px;width:100px;font-family: cursive" /></p>
                    </form>
                </div> 
            </div>>
            </div>  
    </div>
</div>
<!-- footer -->
<footer hidden>
    <div class="container padding2" hidden>
        <div class="row margin_block4 newWidth1">
            <div class="span3 margin_block1">
                <h2 class="textStyle8">CONTACT US</h2>
                <p class="textStyle9">
	        <br />
<br />
<br />
<br />
8892700779<br />
E-MAIL:shivame2011@gmail.com

                </p>
            </div>
            <div class="span3 margin_block1" hidden>
                <h2 class="textStyle8">locations</h2>
                <p> <br />
</p>
            </div>
            <div class="span3 margin_block1" hidden>
                <h2 class="textStyle8">company</h2>
                <ul class="_list3">
                    <li><a href="index.html">Main</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li class="_marginNull"><a href="contact.html">Contacts</a></li>
                </ul>
            </div>
            <div class="span3 margin_block1" hidden>
                <h2 class="textStyle8">follow us</h2>
                    <ul class="social_list">
                        <li><a href="#"><img src="img/social_icon1.png" alt=""></a></li>
                        <li><a href="#"><img src="img/social_icon2.png" alt=""></a></li>
                        <li><a href="#"><img src="img/social_icon3.png" alt=""></a></li>
                        <li><a href="#"><img src="img/social_icon4.png" alt=""></a></li>
                    </ul>   
                        
            </div>
        </div>

        <div class="privacy_text margin_block1">Company Name Here &copy; 2019 &bull;<br />
        <div class="metam">Design: <a href="" style="font-size: 11px;" class="linkcopy">Free CSS Templates</a></div></div>
    </div>
</footer>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/accordion-list.js"></script>
<script>
    $(window).load(function(){
        $('#camera_1').camera({
            height: '28.7%',
            fx: 'simpleFade',
            loader: true,
            pagination: false,
            navigation:true,
            hover: false,
            time:10000,
            alignment:'topCenter'
        });

        $('.accordionList1').accordion_list({
            sliding_speed:500
        });
    })
</script>

</body>

</html>