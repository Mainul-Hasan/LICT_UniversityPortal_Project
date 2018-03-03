<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="aboutUS.aspx.cs" Inherits="aboutUS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="javascript:;">Pages</a></li>
            <li class="active">About Us</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>About Us</h1>
            <div class="content-page">
              <div class="row margin-bottom-30">
                <!-- BEGIN INFO BLOCK -->               
                <div class="col-md-7">
                  <h2 class="no-top-space">History</h2>
                  <p>The idea of establishing a private university to provide quality education at an affordable cost in Bangladesh was first mooted by a group of prominent academics, business leaders, professionals and education enthusiasts led by Dr. Mohammed Farashuddin. With this end in view, this group formed a non-profit, non-political, charitable organization called Progoti Foundation for Education and Development (PFED). East West University is its first major project. Members of the Board of Trustees of the University are: Mr. Jalaluddin Ahmed, Mr. S.M. Nousher Ali, Mr. Farooque B. Chaudhury, Dr. Rafiqul Huda Chaudhury, Mr. Syed Manzur Elahi, Dr. Mohammed Farashuddin, Mr. Mohammed Zahidul Haque R.Ph., Dr. Saidur Rahman Lasker, Dr. Muhammad A. Mannan, Professor M. Mosleh-Uddin, Mr. Shelley A. Mubdi, Mr. M.A. Mumin, Dr. Khalil Rahman, Mr. H.N. Ashequr Rahman and Mrs. Razia Samad. After being accorded permission by the Government under the Private University Act (Act 34) of 1992, East West University was launched in 1996. Classes started in September 1996 with 6 faculty members and 20 students in the campus located at 43 Mohakhali C/A, Dhaka-1212. Today there are over 216 faculty members and approximately 8914 students enrolled through a process of selection</p>
                  <!-- BEGIN LISTS -->
                  <div class="row front-lists-v1">
                    <div class="col-md-6">
                      <ul class="list-unstyled margin-bottom-20">
                        <li><i class="fa fa-check"></i> Officia deserunt molliti</li>
                        <li><i class="fa fa-check"></i> Consectetur adipiscing </li>
                        <li><i class="fa fa-check"></i> Deserunt fpicia</li>
                      </ul>
                    </div>
                    <div class="col-md-6">
                      <ul class="list-unstyled">
                        <li><i class="fa fa-check"></i> Officia deserunt molliti</li>
                        <li><i class="fa fa-check"></i> Consectetur adipiscing </li>
                        <li><i class="fa fa-check"></i> Deserunt fpicia</li>
                      </ul>
                    </div>
                  </div>
                  <!-- END LISTS -->
                </div>
                <!-- END INFO BLOCK -->   

                <!-- BEGIN CAROUSEL -->            
                <div class="col-md-5 front-carousel">
                  <div id="myCarousel" class="carousel slide">
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                      <div class="item active">
                        <img src="assets/pages/img/pics/img2-medium.jpg" alt="">
                        <div class="carousel-caption">
                          <p>Excepturi sint occaecati cupiditate non provident</p>
                        </div>
                      </div>
                      <div class="item">
                        <img src="assets/pages/img/pics/img1-medium.jpg" alt="">
                        <div class="carousel-caption">
                          <p>Ducimus qui blanditiis praesentium voluptatum</p>
                        </div>
                      </div>
                      <div class="item">
                        <img src="assets/pages/img/pics/img2-medium.jpg" alt="">
                        <div class="carousel-caption">
                          <p>Ut non libero consectetur adipiscing elit magna</p>
                        </div>
                      </div>
                    </div>
                    <!-- Carousel nav -->
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                      <i class="fa fa-angle-left"></i>
                    </a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next">
                      <i class="fa fa-angle-right"></i>
                    </a>
                  </div>                
                </div>
                <!-- END CAROUSEL -->
              </div>

              <div class="row margin-bottom-40">
                <!-- BEGIN TESTIMONIALS -->
                <div class="col-md-7 testimonials-v1">
                  <h2>Clients Testimonials</h2>                
                  <div id="myCarousel1" class="carousel slide">
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                      <div class="active item">
                        <blockquote><p>Denim you probably haven't heard of. Lorem ipsum dolor met consectetur adipisicing sit amet, consectetur adipisicing elit, of them jean shorts sed magna aliqua. Lorem ipsum dolor met consectetur adipisicing sit amet do eiusmod dolore.</p></blockquote>
                        <div class="carousel-info">
                          <img class="pull-left" src="assets/pages/img/people/img1-small.jpg" alt="">
                          <div class="pull-left">
                            <span class="testimonials-name">Lina Mars</span>
                            <span class="testimonials-post">Commercial Director</span>
                          </div>
                        </div>
                      </div>
                      <div class="item">
                        <blockquote><p>Raw denim you Mustache cliche tempor, williamsburg carles vegan helvetica probably haven't heard of them jean shorts austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica.</p></blockquote>
                        <div class="carousel-info">
                          <img class="pull-left" src="assets/pages/img/people/img5-small.jpg" alt="">
                          <div class="pull-left">
                            <span class="testimonials-name">Kate Ford</span>
                            <span class="testimonials-post">Commercial Director</span>
                          </div>
                        </div>
                      </div>
                      <div class="item">
                        <blockquote><p>Reprehenderit butcher stache cliche tempor, williamsburg carles vegan helvetica.retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid Aliquip placeat salvia cillum iphone.</p></blockquote>
                        <div class="carousel-info">
                          <img class="pull-left" src="assets/pages/img/people/img2-small.jpg" alt="">
                          <div class="pull-left">
                            <span class="testimonials-name">Jake Witson</span>
                            <span class="testimonials-post">Commercial Director</span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Carousel nav -->
                    <a class="left-btn" href="#myCarousel1" data-slide="prev"></a>
                    <a class="right-btn" href="#myCarousel1" data-slide="next"></a>
                  </div>
                </div>
                <!-- END TESTIMONIALS --> 

                <!-- BEGIN PROGRESS BAR -->
                <div class="col-md-5 front-skills">
                  <h2 class="block">Our Skills</h2>
                  <span>UI Design 90%</span>
                  <div class="progress">
                    <div role="progressbar" class="progress-bar" style="width: 90%;"></div>
                  </div>
                  <span>Wordpress CMS 60%</span>
                  <div class="progress">
                    <div role="progressbar" class="progress-bar" style="width: 60%;"></div>
                  </div>
                  <span>HTML/CSS &amp; JavaScirp 75%</span>
                  <div class="progress">
                    <div role="progressbar" class="progress-bar" style="width: 75%;"></div>
                  </div>
                </div>                       
                <!-- END PROGRESS BAR -->
              </div>

              <div class="row front-team">
                <ul class="list-unstyled">
                  <li class="col-md-3">
                    <div class="thumbnail">
                      <img alt="" src="assets/pages/img/people/img1-large.jpg">
                      <h3>
                        <strong>Lina Doe</strong> 
                        <small>Chief Executive Officer / CEO</small>
                      </h3>
                      <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                      <ul class="social-icons social-icons-color">
                        <li><a class="facebook" data-original-title="Facebook" href="javascript:;"></a></li>
                        <li><a class="twitter" data-original-title="Twitter" href="javascript:;"></a></li>
                        <li><a class="googleplus" data-original-title="Goole Plus" href="javascript:;"></a></li>
                        <li><a class="linkedin" data-original-title="Linkedin" href="javascript:;"></a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="col-md-3">
                    <div class="thumbnail">
                      <img alt="" src="assets/pages/img/people/img4-large.jpg">
                      <h3>
                        <strong>Carles Puyol</strong> 
                        <small>Chief Executive Officer / CEO</small>
                      </h3>
                      <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                      <ul class="social-icons social-icons-color">
                        <li><a class="facebook" data-original-title="Facebook" href="javascript:;"></a></li>
                        <li><a class="twitter" data-original-title="Twitter" href="javascript:;"></a></li>
                        <li><a class="googleplus" data-original-title="Goole Plus" href="javascript:;"></a></li>
                        <li><a class="linkedin" data-original-title="Linkedin" href="javascript:;"></a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="col-md-3">
                    <div class="thumbnail">
                      <img alt="" src="assets/pages/img/people/img2-large.jpg">
                      <h3>
                        <strong>Andres Iniesta</strong> 
                        <small>Chief Executive Officer / CEO</small>
                      </h3>
                      <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                      <ul class="social-icons social-icons-color">
                        <li><a class="facebook" data-original-title="Facebook" href="javascript:;"></a></li>
                        <li><a class="twitter" data-original-title="Twitter" href="javascript:;"></a></li>
                        <li><a class="googleplus" data-original-title="Goole Plus" href="javascript:;"></a></li>
                        <li><a class="linkedin" data-original-title="Linkedin" href="javascript:;"></a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="col-md-3">
                    <div class="thumbnail">
                      <img alt="" src="assets/pages/img/people/img5-large.jpg">
                      <h3>
                        <strong>Jessica Alba</strong> 
                        <small>Chief Executive Officer / CEO</small>
                      </h3>
                      <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                      <ul class="social-icons social-icons-color">
                        <li><a class="facebook" data-original-title="Facebook" href="javascript:;"></a></li>
                        <li><a class="twitter" data-original-title="Twitter" href="javascript:;"></a></li>
                        <li><a class="googleplus" data-original-title="Goole Plus" href="javascript:;"></a></li>
                        <li><a class="linkedin" data-original-title="Linkedin" href="javascript:;"></a></li>
                      </ul>
                    </div>
                  </li>
                </ul>            
              </div>

            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>
</asp:Content>

