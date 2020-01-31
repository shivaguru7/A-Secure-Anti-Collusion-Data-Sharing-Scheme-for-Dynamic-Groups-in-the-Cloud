<%@page import="java.sql.ResultSet"%>
<%@page import="DbPack.DatabaseConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
    
<!--    <script>
    function checked(){
        
        var us = document.getElementById("user").value;
        var pa = document.getElementById("pass").value;
        var gr = document.getElementById("group").value;
        var em = document.getElementById("email").value;
        var mo = document.getElementById("mobile").value;
        var pl = document.getElementById("place").value;
        
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
         var mob = /^[1-9]{1}[0-9]{10}$/;
        if(us==""){
            alert("enter username");
            document.getElementById("user").value;
            return false;
        }
        if(pa==""){
            alert("enter password");
            document.getElementById("pass").value;
            return false;
        }
        if(gr==""){
            alert("enter group");
            document.getElementById("group").value;
            return false;
        }
        if(em==""){
            alert("enter email");
            document.getElementById("email").value;
            return false;
        }
         if (!filter.test(email.value)) {
            alert('Please provide a valid email address');
            email.focus;
            return false;
         }
        if(mo==""){
            alert("enter mobile");
            document.getElementById("mobile").value;
            return false;
        }
     if (isNaN(mo))
                {
                    alert("Enter Numbers Only");
                   document.getElementById("mobile").value;
                    return false;
                }
                if (!/^[0-9]{10}$/.test(mo)) {
                    alert("Please input exactly 10 numbers!");
                    document.getElementById("mobile").value;
                    return false;
                }

        if(pl==""){
            alert("enter place");
            document.getElementById("place").value;
            return false;
        }
    }
</script>-->
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
                         <div class="nav-collapse nav-collapse_ collapse" style="margin-left: 160px">
                            <ul class="sf-menu">
                                <li><a href="index.html"><div class="base_text">Home</div><div class="over"></div></a></li>
                                <li><a href="GroupManager.jsp"><div class="base_text">Group Manager</div><div class="over"></div></a></li>
                                <li><a href="member_login.jsp"><div class="base_text">Group Members</div><div class="over"></div></a></li>
                                <li class="active"><a href="register.jsp"><div class="base_text">Member Register</div><div class="over"></div></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- content -->
    <div style="width: 100%; height: 900px;background-image: url('img/banhm.jpg')">
        <br><br><div class="section_01_left" style="margin-left: 550px;">
            <div style="border:solid 2px;border-radius: 9px;border-color: white;height: 550px;width: 300px;padding: 80px;margin-left: -70px;">
                
                <div>
                    
                    <form action="register" method="post" >
                        <p style="color: red;font-family:fantasy;font-size:220%; margin-left: 10px;">Member Registration</p><br>
                <p style="color: white;font-family:fantasy;font-size:150%;margin-left: 29px; ">Username : <input type ="text" name ="username" required="" id="user" size="30"/></p>
                <p style="color: white;font-family:fantasy;font-size:150%;margin-left: 29px; ">Password : <input type ="password" id="pass" required="" name ="password" size="30"/></p>	
                <p style="color: white;font-family:fantasy;font-size:150%;margin-left: 29px; ">Confirm Password : <input type ="password" required="" name ="conpassword" size="30"/></p>	
                <p style="color: white;font-family:fantasy;font-size:150%;margin-left: 29px; ">  Group : 
                <select id="keys" name="group" style="width: 220px; height: 30px;" onchange="loadXMLDoc()" required=""> 
                                        <option value="-1">-Select-</option>
                                        
                                        <%
                                            String sql1 = "select * from make_group";
                                            System.out.println(";;;;;;;;;;;;;;;" + sql1);
                                            PreparedStatement pst1 = null;
                                            Connection conn1 = null;
                                            try {
                                                conn1 = DatabaseConnection.getCon();
                                                pst1 = conn1.prepareStatement(sql1);
                                                ResultSet rs1 = pst1.executeQuery();
                                                while (rs1.next()) {%>
                                        <option value="<%=rs1.getString("group_name")%>"><%=rs1.getString("group_name")%></option>
                                        <%}
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }%>
                                    </select>
                </p>	
                <p style="color: white;font-family:fantasy;font-size:150%;margin-left: 28px; ">  E-Mail : <input type ="email" name ="email" id="email" required="" size="30"/></p>	
                <p style="color: white;font-family:fantasy;font-size:150%;margin-left: 23px; ">  Mobile : <input type ="text" name ="mobile" pattern="[789][0-9]{9}" required="" id="mobile" size="30"/></p>	
                <p style="color: white;font-family:fantasy;font-size:150%;margin-left: 31px; ">  Place : <input type ="text" name ="place"  required="" id="place" size="30"/></p><br>	
                <p style="margin-left: 50px;"><input type ="submit" value="Register" style="font-size:150%;"/><input type ="reset" value="Cancel" style="font-size:150%;" /></p><br><br>
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