<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="slick, flat, dashboard, bootstrap, admin, template, theme, responsive, fluid, retina">
    <link rel="shortcut icon" href="javascript:;" type="image/png">

    <title>Something Management</title>
    <!--google fonts-->
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,700&subset=latin,vietnamese' rel='stylesheet' type='text/css'/>

    <!--right slidebar-->
    <link href="/css/slidebars.css" rel="stylesheet">

    <!--switchery-->
    <link href="/js/switchery/switchery.min.css" rel="stylesheet" type="text/css" media="screen"/>

    <!--bootstrap-fileinput-master-->
    <link rel="stylesheet" type="text/css" href="/js/bootstrap-fileinput-master/css/fileinput.css"/>

    <!--common style-->
    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.min.js"></script>
    <![endif]-->
    <script src="/js/jquery-1.10.2.min.js"></script>
    <script src="/js/jquery-migrate.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src='/js/tinymce/jquery.tinymce.min.js'></script>
    <script src="/js/general.js"></script>
    <script src="/custom/js/general.js"></script>
    <script src="/custom/js/moment.min.js"></script>
</head>

<body class="sticky-header">

<section>
    <!-- sidebar left start-->
    <div class="sidebar-left">
        <!--responsive view logo start-->
        <div class="logo dark-logo-bg visible-xs-* visible-sm-*">
            <a href="/">
                <!--<i class="fa fa-maxcdn"></i>-->
                <span class="brand-name">Something</span>
            </a>
        </div>
        <!--responsive view logo end-->

        <div class="sidebar-left-info">
            <!-- visible small devices start-->
            <div class=" search-field"></div>
            <!-- visible small devices end-->

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked side-navigation">
                <li>
                    <h3 class="navigation-title">Navigation</h3>
                </li>
                {% for item in sidebar %}
                    <li class="{{ item['child'] is not empty?'menu-list':'' }} {% if item['child'] is not empty %} {{ activesidebar==item['controller']?'nav-active':'' }} {% else %} {{ activesidebar==item['controller']?'active':'' }} {% endif %}">
                        <a href="{{ item['controller'] }}"><i class="{{ item['icon'] }}"></i> <span>{{ item['name'] }}</span></a>
                        {% if item['child'] is not empty %}
                            <ul class="child-list">
                                {% for citem in item['child'] %}
                                    <li class="{{ activesidebar==citem['controller']?"active":"" }}"><a class="{{ activesidebar==citem['controller']?"text-info":"" }}" href="{{ citem['controller'] }}">{{ citem['name'] }}</a></li>
                                {% endfor %}
                            </ul>
                        {% endif %}
                    </li>
                {% endfor %}
            </ul>

            <script>
                $(document).ready(function(){
                    var listli = $('.side-navigation li');
                    $.each(listli,function(){
                        var obj = $(this);
                        var childli = $(this).children('ul').find('li');
                        $.each(childli,function(){
                            if($(this).hasClass('active'))  $(obj).addClass('nav-active');
                        });
                    });
                });
            </script>
            <!--sidebar nav end-->


        </div>
    </div>
    <!-- sidebar left end-->

    <!-- body content start-->
    <div class="body-content" style="min-height: 1200px;">

        <!-- header section start-->
        <div class="header-section">

            <!--logo and logo icon start-->
            <div class="logo dark-logo-bg hidden-xs hidden-sm">
                <a href="index.html">
                    <!--<i class="fa fa-maxcdn"></i>-->
                    <span class="brand-name">Health Care</span>
                </a>
            </div>

            <div class="icon-logo dark-logo-bg hidden-xs hidden-sm">
                <a href="index.html">
                    <img src="/img/logo-icon.png" alt="">
                    <!--<i class="fa fa-maxcdn"></i>-->
                </a>
            </div>
            <!--logo and logo icon end-->

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-outdent"></i></a>
            <!--toggle button end-->

            <!--mega menu start-->
            <div id="navbar-collapse-1" class="navbar-collapse collapse yamm mega-menu">
                <ul class="nav navbar-nav">
                    <!-- Classic list -->
                    <li class="dropdown"><a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle">Mega <b
                                    class=" fa fa-angle-down"></b></a>
                        <ul class="dropdown-menu wide-full">
                            <li>
                                <!-- Content container to add padding -->
                                <div class="yamm-content">
                                    <div class="row">
                                        <ul class="col-sm-2 list-unstyled">
                                            <li>
                                                <p class="title">Standard</p>
                                            </li>
                                            <li><a href="javascript:;"> Slick Mega Navigation </a>
                                            </li>
                                            <li><a href="javascript:;"> Built in BS3+</a>
                                            </li>
                                            <li><a href="javascript:;"> Full Customizable </a>
                                            </li>
                                            <li><a href="javascript:;"> Huge Components </a>
                                            </li>
                                            <li><a href="javascript:;"> Tons of widgets </a>
                                            </li>
                                            <li><a href="javascript:;"> Fontawesome </a>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-2 list-unstyled">
                                            <li>
                                                <p class="title">Description</p>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="d-title">2015 Mordern Design</span>
                                                    <span class="d-desk">Description goes here</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="d-title">Amaging Dashboard</span>
                                                    <span class="d-desk">Build with BS3</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="d-title">3500+ Satisfied Client</span>
                                                    <span class="d-desk">Max 5 star rating</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <span class="d-title">Easy to Cutomize</span>
                                                    <span class="d-desk">Very easy to use</span>
                                                </a>
                                            </li>

                                        </ul>
                                        <ul class="col-sm-2 list-unstyled">
                                            <li>
                                                <p class="title">Iconic</p>
                                            </li>
                                            <li><a href="javascript:;"><i class="fa fa-anchor text-muted"></i> Anchor Icon </a>
                                            </li>
                                            <li><a href="javascript:;"><i class="fa fa-desktop text-muted"></i> Desktop Icon </a>
                                            </li>
                                            <li><a href="javascript:;"><i class="fa fa-laptop text-muted"></i> Laptop Icon</a>
                                            </li>
                                            <li><a href="javascript:;"><i class="fa fa-automobile text-muted"></i> Automobile Icon </a>
                                            </li>
                                            <li><a href="javascript:;"><i class="fa fa-briefcase text-muted"></i> Briefcase Icon</a>
                                            </li>
                                        </ul>
                                        <ul class="col-sm-3 list-unstyled">
                                            <li>
                                                <p class="title">Image + Description</p>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <img class="icon-img" src="img/mega-menu/mega_icon1.png" alt="" />
                                                                <span class="icon-desk">
                                                                                        <span class="d-title">Full Flat Concept</span>
                                                                <span class="d-desk">Description goes here</span>
                                                                </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <img class="icon-img" src="img/mega-menu/mega_icon2.png" alt="" />
                                                                <span class="icon-desk">
                                                                                        <span class="d-title">Amaging Dashboard</span>
                                                                <span class="d-desk">Build with BS3</span>
                                                                </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <img class="icon-img" src="img/mega-menu/mega_icon3.png" alt="" />
                                                                <span class="icon-desk">
                                                                                        <span class="d-title">3500+ Satisfied Client</span>
                                                                <span class="d-desk">Max 5 star rating</span>
                                                                </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <img class="icon-img" src="img/mega-menu/mega_icon4.png" alt="" />
                                                                <span class="icon-desk">
                                                                                        <span class="d-title">Easy to Cutomize</span>
                                                                <span class="d-desk">Very easy to use</span>
                                                                </span>
                                                </a>
                                            </li>

                                        </ul>
                                        <ul class="col-sm-3 list-unstyled custom-nav-img">
                                            <li>
                                                <p class="title">Custom</p>
                                            </li>
                                            <li>

                                                <p class="desk">Ipsum dolor sit amet, consectetur adipisicing elit.
                                                    Asperiores aut, autem commodi cumque illum pariatur
                                                    vero. Ad adipisci animi delectus</p>
                                            </li>
                                            <li><span class="mega-bg"></span></li>
                                        </ul>

                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>

                    <!-- Classic dropdown -->
                    <li class="dropdown"><a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle"> English  <b
                                    class=" fa fa-angle-down"></b></a>
                        <ul role="menu" class="dropdown-menu language-switch">
                            <li>
                                <a tabindex="-1" href="javascript:;"><span> Tiếng Việt </span></a>
                            </li>
                            <li>
                                <a tabindex="-1" href="javascript:;"><span> English </span></a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!--mega menu end-->
            <div class="notification-wrap">
                <!--left notification start-->
                <div class="left-notification">
                    <ul class="notification-menu">
                        <!--mail info start-->
                        <li class="d-none">
                            <a href="javascript:;" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-primary">6</span>
                            </a>

                            <div class="dropdown-menu dropdown-title">
                                <div class="title-row">
                                    <h5 class="title purple">
                                        You have 6 Unread Mail
                                    </h5>
                                    <a href="javascript:;" class="btn-primary btn-view-all">View all</a>
                                </div>
                                <div class="notification-list mail-list">
                                    <a href="javascript:;" class="single-mail">
                                <span class="icon bg-primary">
                                    S
                                </span>
                                        <strong>Smith Doe</strong>
                                        <small> Just Now</small>
                                        <p>
                                            <small>Hello smith i have some query about your</small>
                                        </p>
                                <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                    <i class="fa fa-circle"></i>
                                </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail">
                                <span class="icon bg-success">
                                    A
                                </span>
                                        <strong>Anthony Jones </strong>
                                        <small> 30 Mins Ago</small>
                                        <p>
                                            <small>Hello this is an example message</small>
                                        </p>
                                <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                    <i class="fa fa-circle"></i>
                                </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail">
                                <span class="icon bg-warning">
                                    B
                                </span> Billy Jones
                                        <small> 2 Days Ago</small>
                                        <p>
                                            <small>Slicklab is awesome Dashboard</small>
                                        </p>
                                <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                    <i class="fa fa-circle-o"></i>
                                </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail">
                                <span class="icon bg-dark">
                                    J
                                </span> John Doe
                                        <small> 1 Week Ago</small>
                                        <p>
                                            <small>Build with Twitter Bootstrap 3</small>
                                        </p>
                                <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                    <i class="fa fa-circle-o"></i>
                                </span>
                                    </a>
                                    <a href="javascript:;" class="single-mail">
                                <span class="icon bg-danger">
                                    S
                                </span> Smith Doe
                                        <small> Just Now</small>
                                        <p>
                                            <small>No hassle, very easy to use</small>
                                        </p>
                                <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                    <i class="fa fa-circle-o"></i>
                                </span>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <!--mail info end-->

                        <!--task info start-->
                        <li class="d-none">
                            <a href="javascript:;" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                                <i class="fa fa-tasks"></i>
                                <span class="badge bg-success">9</span>
                            </a>

                            <div class="dropdown-menu dropdown-title">
                                <div class="title-row">
                                    <h5 class="title green">
                                        You have 9 task
                                    </h5>
                                    <a href="javascript:;" class="btn-success btn-view-all">View all</a>
                                </div>
                                <div class="notification-list task-list">
                                    <a href="javascript:;">
                                <span class="icon ">
                                    <i class="fa fa-paw green-color"></i>
                                </span>
                                <span class="task-info">
                                Smith Doe
                                <small> Assigned new task 10 min ago</small>
                                    </span>
                                    </a>
                                    <a href="javascript:;">
                                <span class="icon ">
                                    <i class="fa fa-line-chart blue-color"></i>
                                </span>
                                <span class="task-info">Anthony Jones
                                <small> Done 60% of his task</small>

                                <div class="progress progress-striped">
                                    <div style="width: 66%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="66" role="progressbar" class="progress-bar progress-bar-info"></div>
                                </div>

                                </span>
                                    </a>
                                    <a href="javascript:;">
                                <span class="icon ">
                                    <i class="fa fa-heart purple-color"></i>
                                </span>
                                <span class="task-info">Tawseef
                                <small> Like your task 10 min ago</small>
                                    </span>

                                    </a>
                                    <a href="javascript:;">
                                <span class="icon ">
                                    <i class="fa fa-check green-color"></i>
                                </span>
                                <span class="task-info">Anjelina Gomez
                                <small>completed his task Yesterday</small>
                                    </span>
                                    </a>
                                    <a href="javascript:;">
                                <span class="icon ">
                                    <i class="fa fa-comments-o"></i>
                                </span>
                                <span class="task-info">Franklin Anderson
                                <small>commented on your task 3 Days ago</small>
                                </span>
                                    </a>
                                </div>
                            </div>
                        </li>
                        <!--task info end-->

                        <!--notification info start-->
                        <li>
                            <a href="javascript:;" class="btn btn-default dropdown-toggle info-number" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="badge bg-warning">4</span>
                            </a>

                            <div class="dropdown-menu dropdown-title ">

                                <div class="title-row">
                                    <h5 class="title yellow">
                                        You have 4 New Notification
                                    </h5>
                                    <a href="javascript:;" class="btn-warning btn-view-all">View all</a>
                                </div>
                                <div class="notification-list-scroll sidebar">
                                    <div class="notification-list mail-list not-list">
                                        <a href="javascript:;" class="single-mail">
                                    <span class="icon bg-primary">
                                        <i class="fa fa-envelope-o"></i>
                                    </span>
                                            <strong>New User Registration</strong>

                                            <p>
                                                <small>Just Now</small>
                                            </p>
                                    <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                        <i class="fa fa-circle"></i>
                                    </span>
                                        </a>
                                        <a href="javascript:;" class="single-mail">
                                    <span class="icon bg-success">
                                        <i class="fa fa-comments-o"></i>
                                    </span>
                                            <strong> Private message Send</strong>

                                            <p>
                                                <small>30 Mins Ago</small>
                                            </p>
                                    <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                        <i class="fa fa-circle"></i>
                                    </span>
                                        </a>
                                        <a href="javascript:;" class="single-mail">
                                    <span class="icon bg-warning">
                                        <i class="fa fa-warning"></i>
                                    </span> Application Error
                                            <p>
                                                <small> 2 Days Ago</small>
                                            </p>
                                    <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                        <i class="fa fa-circle-o"></i>
                                    </span>
                                        </a>
                                        <a href="javascript:;" class="single-mail">
                                    <span class="icon bg-dark">
                                       <i class="fa fa-database"></i>
                                    </span> Database Overloaded 24%
                                            <p>
                                                <small>1 Week Ago</small>
                                            </p>
                                    <span class="read tooltips" data-original-title="Mark as Unread" data-toggle="tooltip" data-placement="left">
                                        <i class="fa fa-circle-o"></i>
                                    </span>
                                        </a>
                                        <a href="javascript:;" class="single-mail">
                                    <span class="icon bg-danger">
                                        <i class="fa fa-warning"></i>
                                    </span>
                                            <strong>Server Failed Notification</strong>

                                            <p>
                                                <small>10 Days Ago</small>
                                            </p>
                                    <span class="un-read tooltips" data-original-title="Mark as Read" data-toggle="tooltip" data-placement="left">
                                        <i class="fa fa-circle"></i>
                                    </span>
                                        </a>

                                    </div>
                                </div>
                            </div>
                        </li>
                        <!--notification info end-->
                    </ul>
                </div>
                <!--left notification end-->
                <!--right notification start-->
                <div class="right-notification">
                    <ul class="notification-menu">
                        <li>
                            <a href="javascript:;" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                {{ labelkey['general.lbl_hello'] }} <b>{{ uinfo['username'] }}</b>
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu purple pull-right">
                                <li><a href="javascript:;"> {{ labelkey['general.lbl_profile'] }}</a></li>
                                <li><a href="{{ url("security/logout") }}"><i class="fa fa-sign-out pull-right"></i> {{ labelkey['general.lbl_logout'] }}</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!--right notification end-->
            </div>

        </div>
        <!-- header section end-->

        {{ flash.output() }}

        <!--body wrapper start-->
        <div class="wrapper">

            {{ content() }}

        </div>
        <!--body wrapper end-->


        <!--footer section start-->
        <footer>
            2016 &copy; Tecapro. Services Team
            <div id="loading"><img src="/img/loading.gif" alt="Loading" /> Loading... </div>
        </footer>
        <!--footer section end-->

    </div>
    <!-- body content end-->
</section>

<!-- Placed js at the end of the document so the pages load faster -->

<script src="/js/modernizr.min.js"></script>

<!--Nice Scroll-->
<script src="/js/jquery.nicescroll.js" type="text/javascript"></script>

<!--right slidebar-->
<script src="/js/slidebars.min.js"></script>

<!--switchery-->
<script src="/js/switchery/switchery.min.js"></script>
<script src="/js/switchery/switchery-init.js"></script>

<!--Sparkline Chart-->
<script src="/js/sparkline/jquery.sparkline.js"></script>
<script src="/js/sparkline/sparkline-init.js"></script>

<!--bootstrap-fileinput-master-->
<script type="text/javascript" src="/js/bootstrap-fileinput-master/js/fileinput.js"></script>
<script type="text/javascript" src="/js/file-input-init.js"></script>

<!--common scripts for all pages-->
<script src="/js/scripts.js"></script>


</body>
</html>
