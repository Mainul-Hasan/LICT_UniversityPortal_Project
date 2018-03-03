<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="index" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Configuration" %>
<%@ Import Namespace="System.Data" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- BEGIN SLIDER -->
    <div class="page-slider">
        <div id="carousel-example-generic" class="carousel slide carousel-slider">
            <!-- Indicators -->
            <ol class="carousel-indicators carousel-indicators-frontend">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <%
                string strPath = WebConfigurationManager.ConnectionStrings["StudentDBCon"].ConnectionString;
                SqlConnection con = new SqlConnection(strPath);
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM tblBanner", con);
                DataSet ds = new DataSet();
                da.Fill(ds, "Banner");
                ds.Tables["Banner"].PrimaryKey = new DataColumn[] { ds.Tables["Banner"].Columns["Id"] };               
            %>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <!-- First slide -->
                <div class="item carousel-item-eight active">
                    <% DataRow dr1 = ds.Tables["Banner"].Rows.Find("1");

                       {%>
                    <div class="container">
                        <div class="carousel-position-six text-uppercase text-center">
                            <h2 class="margin-bottom-20 animate-delay carousel-title-v5" data-animation="animated fadeInDown"><%= dr1["HeaderText1"].ToString() %><br />
                                <span class="carousel-title-normal"><%= dr1["HeaderText2"].ToString() %></span>
                            </h2>
                            <p class="carousel-subtitle-v5 border-top-bottom margin-bottom-30" data-animation="animated fadeInDown"><%= dr1["Para"].ToString() %> </p>
                            <a class="carousel-btn-green" href="#" data-animation="animated fadeInUp">Let's Do This</a>
                        </div>
                    </div>
                    <%}
                    %>
                </div>


                <!-- Second slide -->
                <div class="item carousel-item-nine">
                    <% DataRow dr2 = ds.Tables["Banner"].Rows.Find("2");

                       {%>
                    <div class="container">
                        <div class="carousel-position-six">
                            <h2 class="animate-delay carousel-title-v6 text-uppercase" data-animation="animated fadeInDown"><%= dr2["HeaderText1"].ToString() %></h2>
                            <p class="carousel-subtitle-v6 text-uppercase" data-animation="animated fadeInDown"><%= dr2["HeaderText2"].ToString() %></p>
                            <p class="carousel-subtitle-v7 margin-bottom-30" data-animation="animated fadeInDown"><%= dr2["Para"].ToString() %></p>
                            <a class="carousel-btn-green" href="#" data-animation="animated fadeInUp">Start Now!</a>
                        </div>
                    </div>
                    <%}
                    %>
                </div>

                <!-- Third slide -->
                <div class="item carousel-item-ten">
                    <% DataRow dr3 = ds.Tables["Banner"].Rows.Find("3");

                       {%>
                    <div class="container">
                        <div class="carousel-position-six">
                            <h2 class="animate-delay carousel-title-v6 text-uppercase" data-animation="animated fadeInDown"><%= dr3["HeaderText1"].ToString() %></h2>
                            <p class="carousel-subtitle-v6 text-uppercase" data-animation="animated fadeInDown"><%= dr3["HeaderText2"].ToString() %></p>
                            <p class="carousel-subtitle-v7 margin-bottom-30" data-animation="animated fadeInDown"><%= dr3["Para"].ToString() %></p>
                        </div>
                    </div>
                    <%}
                    %>
                </div>
            </div><!-- END Wrapper for slides -->

            <!-- Controls -->
            <a class="left carousel-control carousel-control-shop carousel-control-frontend" href="#carousel-example-generic" role="button" data-slide="prev">
                <i class="fa fa-angle-left" aria-hidden="true"></i></a>
            <a class="right carousel-control carousel-control-shop carousel-control-frontend" href="#carousel-example-generic" role="button" data-slide="next">
                <i class="fa fa-angle-right" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- END SLIDER -->
    <div class="main">
        <!-- BEGIN Welcome section-->
        <section class="margin-bottom-40" id="welcome">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="featured-msg clearfix">
                            <div class="container">
                                <h2 class="ftmsg-title"><strong>Welcome</strong> TO Michigan Technological University  (MTU)</h2>
                                <div class="ftmsg-body">
                                    <p style="box-sizing: border-box; margin: 0px 0px 30px; text-align: center; line-height: 1.8; background-color: #eeefef;">Michigan Technological University  (MTU), one of the leading private universities in Bangladesh, was founded in 2003 under the Private University Act 1992 with a vision to create a global higher education center of excellence. MTU offers students from all walks of life the advantages of an affordable, personalized education of global standard. As a modern, dynamic, and innovative institution for undergraduate and graduate students, MTU lays stress on quality education imparted by a galaxy of highly qualified, dynamic, dedicated, and well-experienced faculty members with global exposure.</p>
                                    <p style="box-sizing: border-box; margin: 0px 0px 30px; text-align: center; line-height: 1.8; background-color: #eeefef;">MTU’s greatest resource in fulfilling its mission is its faculty of about 150 distinguished scholars and educators, whose scholarly research experiences and teaching skills enrich the students’ classroom environment. To ensure quality education, MTU is equipped with modern infrastructural facilities, latest academic curricula, Intern et with Wi-Fi facility, air-conditioned classrooms, and seminar halls supported with multi-media, rich libraries, most sophisticated laboratories, students' cafeterias, standby generators, etc. The students of MTU experience a vibrant university community with a diverse range of academic offerings and about 4,000 participating students.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END Welcome section-->
        </section>
        <div class="container">
            <!-- BEGIN BLOCKQUOTE BLOCK -->
            <div class="row quote-v1 margin-bottom-30">
                <div class="col-md-9">
                    <span>Continuing our founding mission to bring knowledge to the Bangladesh</span>
                </div>
                <div class="col-md-3 text-right">
                    <a class="btn-transparent" href="#" target="_blank"><i class="fa fa-graduation-cap margin-right-10"></i>Apply Now!</a>
                </div>
            </div>
            <!-- END BLOCKQUOTE BLOCK -->

            <!-- BEGIN RECENT WORKS -->
            <div class="row recent-work margin-bottom-40">
                <div class="col-md-3">
                    <h2><a href="portfolio.html">Our Research Works</a></h2>
                    <p>At MTU, our research makes a difference across the world. We are leaders in cutting-edge science, engineering, mathematics, and medicine research, and have a world-class reputation in the humanities and social sciences.</p>
                </div>
                <div class="col-md-9">
                    <div class="owl-carousel owl-carousel3">
                        <div class="recent-work-item">
                            <em>
                                <img src="assets/pages/img/researchWork/research1.jpg" alt="Amazing Project" class="img-responsive">
                                <a href="portfolio-item.html"><i class="fa fa-link"></i></a>
                                <a href="assets/pages/img/works/img1.jpg" class="fancybox-button" title="Project Name #1" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                            </em>
                            <a class="recent-work-description" href="javascript:;">
                                <strong>Enhanced Climate Control for Electric Cars </strong>
                                <b>16/01/2018</b>
                            </a>
                        </div>
                        <div class="recent-work-item">
                            <em>
                                <img src="assets/pages/img/researchWork/research2.jpg" alt="Amazing Project" class="img-responsive">
                                <a href="portfolio-item.html"><i class="fa fa-link"></i></a>
                                <a href="assets/pages/img/works/img2.jpg" class="fancybox-button" title="Project Name #2" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                            </em>
                            <a class="recent-work-description" href="javascript:;">
                                <strong>“Connect the Dots”</strong>
                                <b>17/01/2018</b>
                            </a>
                        </div>
                        <div class="recent-work-item">
                            <em>
                                <img src="assets/pages/img/researchWork/research3.jpg" alt="Amazing Project" class="img-responsive">
                                <a href="portfolio-item.html"><i class="fa fa-link"></i></a>
                                <a href="assets/pages/img/works/img3.jpg" class="fancybox-button" title="Project Name #3" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                            </em>
                            <a class="recent-work-description" href="javascript:;">
                                <strong>insight into the future</strong>
                                <b>20/01/2018</b>
                            </a>
                        </div>
                        <div class="recent-work-item">
                            <em>
                                <img src="assets/pages/img/researchWork/research4.jpg" alt="Amazing Project" class="img-responsive">
                                <a href="portfolio-item.html"><i class="fa fa-link"></i></a>
                                <a href="assets/pages/img/works/img4.jpg" class="fancybox-button" title="Project Name #4" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                            </em>
                            <a class="recent-work-description" href="javascript:;">
                                <strong>A tool for tracking EHR adoption rates</strong>
                                <b>15/01/2018</b>
                            </a>
                        </div>
                        <div class="recent-work-item">
                            <em>
                                <img src="assets/pages/img/researchWork/research5.jpg" alt="Amazing Project" class="img-responsive">
                                <a href="portfolio-item.html"><i class="fa fa-link"></i></a>
                                <a href="assets/pages/img/works/img5.jpg" class="fancybox-button" title="Project Name #5" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                            </em>
                            <a class="recent-work-description" href="javascript:;">
                                <strong>Electronic health records failed to improve care for stroke patients</strong>
                                <b>29/01/2018</b>
                            </a>
                        </div>
                        <div class="recent-work-item">
                            <em>
                                <img src="assets/pages/img/researchWork/research6.jpg" alt="Amazing Project" class="img-responsive">
                                <a href="portfolio-item.html"><i class="fa fa-link"></i></a>
                                <a href="assets/pages/img/works/img6.jpg" class="fancybox-button" title="Project Name #6" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                            </em>
                            <a class="recent-work-description" href="javascript:;">
                                <strong>Mobility Researchers Take On Detroit Auto Show</strong>
                                <b>03/02/2018</b>
                            </a>
                        </div>
                        <div class="recent-work-item">
                            <em>
                                <img src="assets/pages/img/researchWork/research7.jpg" alt="Amazing Project" class="img-responsive">
                                <a href="portfolio-item.html"><i class="fa fa-link"></i></a>
                                <a href="assets/pages/img/works/img3.jpg" class="fancybox-button" title="Project Name #3" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                            </em>
                            <a class="recent-work-description" href="javascript:;">
                                <strong>Tech in Ten: Diversity in STEM Education</strong>
                                <b>07/02/2018</b>
                            </a>
                        </div>
                        <div class="recent-work-item">
                            <em>
                                <img src="assets/pages/img/researchWork/research8.jpg" alt="Amazing Project" class="img-responsive">
                                <a href="portfolio-item.html"><i class="fa fa-link"></i></a>
                                <a href="assets/pages/img/works/img4.jpg" class="fancybox-button" title="Project Name #4" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                            </em>
                            <a class="recent-work-description" href="javascript:;">
                                <strong>A Series of Fortunate Events: Antarctic Zircons Tell Story of Early Volcanism</strong>
                                <b>15/02/2018</b>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END RECENT WORKS -->

            <!-- BEGIN TABS AND TESTIMONIALS -->
            <div class="row mix-block margin-bottom-40">
                <!-- TABS -->
                <div class="col-md-7 tab-style-1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-1" data-toggle="tab">About research at MTU</a></li>
                        <li><a href="#tab-2" data-toggle="tab">Key research areas</a></li>
                        <li><a href="#tab-3" data-toggle="tab">Research Services</a></li>
                        <li><a href="#tab-4" data-toggle="tab">Research Network</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane row fade in active" id="tab-1">
                            <div class="col-md-3 col-sm-3">
                                <a href="#" class="fancybox-button" title="Image Title" data-rel="fancybox-button">
                                    <img class="img-responsive" src="assets/pages/img/researchWork/research8.jpg" alt="">
                                </a>
                            </div>
                            <div class="col-md-9 col-sm-9">
                                <p class="margin-bottom-10">We are constantly seeking new ways to engage with government, industry, and the community in order to build productive, sustainable partnerships and tackle some of the fundamental issues facing humankind.</p>
                                <p><a class="more" style="cursor: pointer" data-toggle="collapse" data-target="#demo1">Read more <i class="fa fa-arrow-right"></i></a></p>
                                <div id="demo1" class="collapse">
                                    <p>In the Research Excellence Framework 2014 98 per cent of our research was rated as of international quality. This resulted in the Higher Education Funding Council for England (HEFCE) awarding us an extra £3.8 million for research, the third highest gain amongst English universities.</p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane row fade" id="tab-2">
                            <div class="col-md-9 col-sm-9">
                                <p>We believe the future of research lies in breaking down traditional barriers between academic disciplines so the bigger problems of the 21st Century can be considered from human as well as physical perspectives. We have a number of interdisciplinary research themes, which fit closely with international research priorities.</p>
                            </div>
                            <div class="col-md-3 col-sm-3">
                                <a href="assets/temp/photos/img10.jpg" class="fancybox-button" title="Image Title" data-rel="fancybox-button">
                                    <img class="img-responsive" src="assets/pages/img/researchWork/research2.jpg" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-3">
                            <p>
                                We provide professional support for researchers in a number of areas including: funding support, bid development, networks and events, and more. We also manage the University's research strategy - it is our job to help you make an impact. Plus find out all you need to know about the research process on the Research Toolkit.
                            </p>
                        </div>
                        <div class="tab-pane fade" id="tab-4">
                            <p class="margin-bottom-10">The Network is aimed at all academics and professional services staff who are interested in impact and engaged research. The Network brings them together to share best practice and information, to undertake training and to provide opportunities for networking.</p>
                            <p><a class="more" style="cursor: pointer" data-toggle="collapse" data-target="#demo2">Read more <i class="fa fa-arrow-right"></i></a></p>
                            <div id="demo2" class="collapse">
                                <p>Network events run under a number of themes:</p>
                                <ul>
                                    <li>Public Engagement Conversations - Addressing specific issues and questions raised by Network members.</li>
                                    <li>Spotlight On&hellip; - External partners talking about their organisation and opportunities for shared working.</li>
                                    <li>Skills for Engagement - Sessions run by a range of experts with best practice contributions and roundtable discussion.</li>
                                    <li>Funder in Focus - Funders sharing their vision for impact and engaged research.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END TABS -->

                <!-- TESTIMONIALS -->
                <div class="col-md-5 testimonials-v1">
                    <div id="myCarousel" class="carousel slide">
                        <!-- Carousel items -->
                        <div class="carousel-inner">
                            <div class="active item">
                                <blockquote>
                                    <p>MTU is committed to providing quality education and to nurturing creativity for producing successful graduates who will serve our society and the world.</p>
                                </blockquote>
                                <div class="carousel-info">
                                    <img class="pull-left" src="assets/pages/img/people/img1-small.jpg" alt="VC">
                                    <div class="pull-left">
                                        <span class="testimonials-name">Professor M. M. Shahidul Hassan, PhD</span>
                                        <span class="testimonials-post">Vice Chancellor</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <blockquote>
                                    <p>Every individual who has interest in education whether within the country or beyond is warmly welcome to East West University community, preferably in person, and that will be a privilege of mine.</p>
                                </blockquote>
                                <div class="carousel-info">
                                    <img class="pull-left" src="assets/pages/img/people/img5-small.jpg" alt="">
                                    <div class="pull-left">
                                        <span class="testimonials-name">Dr. Mohammed Farashuddin</span>
                                        <span class="testimonials-post">Chairperson, Board of Trustees</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <blockquote>
                                    <p>MTU is the only ISO 9001:2008 certified University in Bangladesh for designing and developing course content and ensuring quality education at undergraduate and graduate level</p>
                                </blockquote>
                                <div class="carousel-info">
                                    <img class="pull-left" src="assets/pages/img/people/img2-small.jpg" alt="">
                                    <div class="pull-left">
                                        <span class="testimonials-name">Prof. Dr. Md. Golam Samdani Fakir</span>
                                        <span class="testimonials-post">Chairperson</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Carousel nav -->
                        <a class="left-btn" href="#myCarousel" data-slide="prev"></a>
                        <a class="right-btn" href="#myCarousel" data-slide="next"></a>
                    </div>
                </div>
                <!-- END TESTIMONIALS -->
            </div>
            <!-- END TABS AND TESTIMONIALS -->

            <!-- BEGIN STEPS -->
            <div class="row margin-bottom-40 front-steps-wrapper front-steps-count-3">
                <h1 style="text-align: center; color: #3e4d5c; margin-bottom: 20px;">Admsission steps</h1>
                <div class="col-md-4 col-sm-4 front-step-col">
                    <div class="front-step front-step1">
                        <h2><a href="register">Register yourself</a></h2>
                        <p>Register yourself in our website to avail privileges.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 front-step-col">
                    <div class="front-step front-step2">
                        <h2>Complete your profile</h2>
                        <p>Successfully complete your profile to apply online.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 front-step-col">
                    <div class="front-step front-step3">
                        <h2><a href="#">Apply online</a></h2>
                        <p>Submit your application to study at our university.</p>
                    </div>
                </div>
            </div>
            <!-- END STEPS -->

            <!-- BEGIN CLIENTS -->
            <div class="row margin-bottom-40 our-clients">
                <div class="col-md-3">
                    <h2>Our Research Partners</h2>
                    <p>We collaborate with industry experts to better understand the needs of employers.</p>
                </div>
                <div class="col-md-9">
                    <div class="owl-carousel owl-carousel6-brands">
                        <div class="client-item">
                            <a href="https://www.shell.com">
                                <img src="assets/pages/img/clients/client_1_gray.png" class="img-responsive" alt="">
                                <img src="assets/pages/img/clients/client_1.png" class="color-img img-responsive" alt="">
                            </a>
                        </div>
                        <div class="client-item">
                            <a href="https://www.fujitsu.com/global/">
                                <img src="assets/pages/img/clients/client_2_gray.png" class="img-responsive" alt="">
                                <img src="assets/pages/img/clients/client_2.png" class="color-img img-responsive" alt="">
                            </a>
                        </div>
                        <div class="client-item">
                            <a href="https://www.spscorporation.com/">
                                <img src="assets/pages/img/clients/client_3_gray.png" class="img-responsive" alt="">
                                <img src="assets/pages/img/clients/client_3.png" class="color-img img-responsive" alt="">
                            </a>
                        </div>
                        <div class="client-item">
                            <a href="https://www.triplingo.com/">
                                <img src="assets/pages/img/clients/client_4_gray.png" class="img-responsive" alt="">
                                <img src="assets/pages/img/clients/client_4.png" class="color-img img-responsive" alt="">
                            </a>
                        </div>
                        <div class="client-item">
                            <a href="https://www.boeing.com/">
                                <img src="assets/pages/img/clients/client_5_gray.png" class="img-responsive" alt="">
                                <img src="assets/pages/img/clients/client_5.png" class="color-img img-responsive" alt="">
                            </a>
                        </div>
                        <div class="client-item">
                            <a href="https://www.cisco.com/">
                                <img src="assets/pages/img/clients/client_6_gray.png" class="img-responsive" alt="">
                                <img src="assets/pages/img/clients/client_6.png" class="color-img img-responsive" alt="">
                            </a>
                        </div>
                        <div class="client-item">
                            <a href="http://www.madeeveryday.com/">
                                <img src="assets/pages/img/clients/client_7_gray.png" class="img-responsive" alt="">
                                <img src="assets/pages/img/clients/client_7.png" class="color-img img-responsive" alt="">
                            </a>
                        </div>
                        <div class="client-item">
                            <a href="https://www.walmart.com">
                                <img src="assets/pages/img/clients/client_8_gray.png" class="img-responsive" alt="">
                                <img src="assets/pages/img/clients/client_8.png" class="color-img img-responsive" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END CLIENTS -->
        </div>
    </div>
</asp:Content>

