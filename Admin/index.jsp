<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.connectionManager"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Admin Panel</title>

    <!-- Bootstrap Css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap Css -->


    <!-- Common Css -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--// Common Css -->


    <!-- Nav Css -->
    <link rel="stylesheet" href="css/style4.css">
    <!--// Nav Css -->


    <!-- Fontawesome Css -->
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <!--// Fontawesome Css -->


</head>

<body>
    <%
        try
        {
         if(session.getAttribute("ad").equals(""))
         {
          out.print("<script>alert('First Login Then Go To Admin Zonne');window.location.href='../../E-Village/login1.html'</script>");
         }
         else
         {
          
         }
         
        }
        catch(Exception e)
        {
         out.print("<script>alert('First Login Then Go To Admin Zonne');window.location.href='../../E-Village/login1.html'</script>");
        }
        %>

    <div class="wrapper">
        <!-- Sidebar Holder -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h1>
                    <a href="index.html">Admin</a>
                </h1>
                <span>M</span>
            </div>
            <div class="profile-bg"></div>
            <ul class="list-unstyled components">
                <li class="active">
                    <a href="index.html">
                        <i class="fas fa-th-large"></i> Dashboard
                    </a>
                </li>
                <li>
                    <a href="contactmgmt.jsp">
                        <i class="fas fa-book"></i> ContactMGMT

                    </a>

                </li>

                <li>
                    <a href="reviewmgmt.jsp">
                        <i class="fas fa-comments"></i> ReviewMGMT

                    </a>

                </li>


                <li>
                    <a href="Registration.jsp">
                        <i class="fas fa-user"></i>Registration
                    </a>
                </li>


                <li>
                    <a href="changepass.jsp">
                        <i class="fas fa-key"></i> Changepassword
                    </a>
                </li>
                
                <li>
                    <a href=".../logout.html">
                        <i class="fas fa-sign-out-alt"></i> Logout
                    </a>
                </li>

            </ul>
        </nav>

        <!-- Page Content Holder -->
        <div id="content">
            <!-- top-bar -->
            <nav class="navbar navbar-default mb-xl-5 mb-4">
                <div class="container-fluid">

                    <div class="navbar-header">
                        <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                            <i class="fas fa-bars"></i>
                        </button>
                    </div>
                    <!-- Search-from -->
                    <form action="#" method="post" class="form-inline mx-auto search-form">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" required="">
                        <button class="btn btn-style my-2 my-sm-0" type="submit">Search</button>
                    </form>
                    <!--// Search-from -->
                    <ul class="top-icons-agileits-w3layouts float-right">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-user"></i>
                            </a>
                            <div class="dropdown-menu drop-3">
                                <div class="profile d-flex mr-o">
                                    <div class="profile-l align-self-center">
                                        <img src="css/me.jpg" class="img-fluid mb-3" alt="Responsive image">
                                    </div>
                                    <div class="profile-r align-self-center">
                                        <h3 class="sub-title-w3-agileits">Lovely Chaudhary</h3>
                                        <a href="mailto:info@example.com">33lovely@gmail.com</a>
                                    </div>
                                </div>
                                <a href="index.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-user mr-3"></i>My Profile</h4>
                                </a>
                                <a href="reviewmgmt.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fas fa-link mr-3"></i>Activity</h4>
                                </a>
                                <a href="contactmgmt.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-envelope mr-3"></i>Messages</h4>
                                </a>
                                <a href="Registration.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-question-circle mr-3"></i>Faq</h4>
                                </a>
                                <a href="changepass.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fa fa-key mr-3"></i>Support</h4>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="logout.html">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            <!--// top-bar -->





            <div class="container-fluid">
                <div class="row">

                    <div class="outer-w3-agile col-xl ml-xl-3 mt-xl-0 mt-3">
                        <div class="stat-grid p-3 d-flex align-items-center justify-content-between " style="background-color: #FF5733;">
                            <div class="s-l">
                                <a href="index.jsp">
                                    <h5>Dashboard</h5></a>

                            </div>
                            <div class="s-r">
                                <h6>
                                    <i class="fas fa-tasks"></i>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between" style="background-color: #11505e;">
                            <div class="s-l">
                                <a href="contactmgmt.jsp">
                                    <h5>Contact</h5></a>

                            </div>
                            <div class="s-r">
                                <h6>
                                    <i class="fas fa-comments"></i>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between " style="background-color: #921c53;">
                            <div class="s-l">
                                <a href="reviewmgmt.jsp">
                                    <h5>Review</h5></a>

                            </div>
                            <div class="s-r">
                                <h6>
                                    <i class="fas fa-user"></i>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between" style="background-color: #6B3A6C;">
                            <div class="s-l">
                                <a href="Registration.jsp">
                                    <h5>Registration</h5></a>

                            </div>
                            <div class="s-r">
                                <h6>
                                    <i class="fas fa-sign-out-alt"></i>
                                </h6>
                            </div>
                        </div>
                    </div>
                      <div class="outer-w3-agile col-xl ml-xl-3 mt-xl-0 mt-3">
                        <div class="stat-grid p-3 d-flex align-items-center justify-content-between " style="background-color: #FF5733;">
                            <div class="s-l">
                                <a href="changepass.jsp">
                                    <h5>Changepass</h5></a>

                            </div>
                            <div class="s-r">
                                <h6>
                                    <i class="fas fa-tasks"></i>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between" style="background-color: #11505e;">
                            <div class="s-l">
                                <h5>Profile</h5>

                            </div>
                            <div class="s-r">
                                <h6>
                                    <i class="fas fa-comments"></i>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between " style="background-color: #921c53;">
                            <div class="s-l">
                                <h5>SendSMS</h5>

                            </div>
                            <div class="s-r">
                                <h6>
                                    <i class="fas fa-user"></i>
                                </h6>
                            </div>
                        </div>
                        <div class="stat-grid p-3 mt-3 d-flex align-items-center justify-content-between" style="background-color: #6B3A6C;">
                            <div class="s-l">
                                <a href="../logout.html">
                                    <h5>LogOut</h5></a>

                            </div>
                            <div class="s-r">
                                <h6>
                                    <i class="fas fa-sign-out-alt"></i>
                                </h6>
                            </div>
                        </div>
                    </div>




                    <!-- Stats -->
                    <div class="outer-w3-agile col-xl">
                        <center>
                            <h1><u>Latest Notification</u></h1>


                            <marquee width="90%" direction="up" height="250px" style="margin-top: 20px;">

                                This is my Admin Page<br>
                                <br>THis page only Change allow for Admin<br><br>In this page show management of all data.
                            </marquee>

                        </center>

                    </div>
                    <!--// Stats -->




                    <!-- Pie-chart -->

                </div>

            </div>

            <!-- Copyright -->
            <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
                <p>� 2023 E-Village . All Rights Reserved | Design by MECATREDZ TECHNOLOGY TEAM
                    <a href="#"> LOVELY CHAUDHARY </a>
                </p>
            </div>
            <!--// Copyright -->
        </div>
    </div>



    <!-- Required common Js -->
    <script src='js/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->



    <!-- Sidebar-nav Js -->
    <script>
        $(document).ready(function() {
            $('#sidebarCollapse').on('click', function() {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>

    <!-- Js for bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

</body>

</html>