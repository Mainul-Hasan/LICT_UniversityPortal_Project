<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feculty Sci Eng.aspx.cs" Inherits="feculty_Sci_Eng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .menudes {
            position: relative;
            overflow: hidden;
            height: 108px;
            line-height: 50px;
            margin: 50px auto;
            border-radius: 8px;
            background: aliceblue;
            top: -24px;
            left: 0px;
        }

            .menudes ul {
                list-style: none;
                text-align: center;
                margin: 0;
                padding: 0;
                font-size: 0;
            }

                .menudes ul li {
                    display: inline-block;
                    width: 24%;
                    box-sizing: border-box;
                    font-size: 18px;
                    margin-right:;
                    height: 88px;
                    text-align: center;
                }

                    .menudes ul li a {
                        color: blue;
                        text-decoration: none;
                    }

        .marca {
            position: absolute;
            bottom: 2px;
            left: -12.5%; /* Al menos 1/2 del ancho de cada enlace */
            width: 12.5%; /* 1/2 del ancho de cada enlace */
            height: 4px;
            background: chocolate;
            transition: 0.5s ease-in-out;
        }

        .menudes ul li:nth-child(1):hover ~ .marca {
            left: 6.25%; /* 1/4 Ancho del enlace */
        }

        .menudes ul li:nth-child(2):hover ~ .marca {
            left: 31.25%; /* 1/4 Ancho del enlace + 1 vez ancho enlace */
        }

        .menudes ul li:nth-child(3):hover ~ .marca {
            left: 56.25%; /* 1/4 Ancho del enlace + 2 veces ancho enlace */
        }

        .menudes ul li:nth-child(4):hover ~ .marca {
            left: 81.5%; /* 1/4 Ancho del enlace + 3 veces ancho enlace */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="padding-bottom: 20px">
        <div class="row">
            <div class="text-capitalize text-center">
                <h2><span style="color: darkblue">
                    <hr />
                    Faculty of Science & Engineering<hr />
                </span></h2>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="sidebar col-md-3 col-sm-3">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item clearfix"><a href="CSE.aspx"><i class="fa fa-angle-right"></i>Department of Computer Science and Engineering</a></li>
                    <li class="list-group-item clearfix"><a href="EEE.aspx"><i class="fa fa-angle-right"></i>Department of Electrical & Electronic Engineering</a></li>
                    <li class="list-group-item clearfix"><a href="ETE.aspx"><i class="fa fa-angle-right"></i>Department of Electrical & Telecommunication Engineering</a></li>
                    <li class="list-group-item clearfix"><a href="CIVIL.aspx"><i class="fa fa-angle-right"></i>Department of Civil Engineering</a></li>
                    <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i>Department of Mechanical Engineering</a></li>
                    <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i>Department of Pharmacy</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <img src="assets/pages/img/people/img3-small.jpg" class="img-rounded" alt="Cinque Terre" width="80%" height="80%">
                <div class="" style="margin-top: 10px">
                    <p>
                        <strong class="text-uppercase" style="font-size: 15px;">Dr.Mozammel Hoque Azad Khan</strong><br />
                        <strong>Dean,Faculty of Science & Engineering</strong><br />
                        <strong>Professor </strong>Dept. of Computer science and Engineering
                    </p>
                    <address>
                        <strong>Twitter, Inc.</strong><br>
                        1355 Market Street, Suite 900<br>
                        San Francisco, CA 94103<br>
                        <strong>Phone: </strong>
                        (123) 456-7890<br />
                        <strong>Email: </strong>
                        <a href="mailto:#">first.last@example.com</a>
                    </address>
                </div>
            </div>
            <div class="col-md-5">
                <div class="caption text-justify">
                    <p>Emerging technologies, both physical and biological, are thought to be the major striving forces for sustainable transformation of the society in the 21st century. These technologies, no doubt, are developed on the top of basic sciences like mathematics, physics, chemistry, and biology. Thus, at present, the  Faculty of Sciences and Engineering house eight departments with a blending of basic sciences, applied sciences, and engineering. The departments are Department of Applied Statistics, Department of Civil Engineering, Department of Computer Science and Engineering, Department of Electrical and Electronic Engineering, Department of Electronics and Communications Engineering, Department of Genetic Engineering and Biotechnology, Department of Mathematics and Physical Sciences, and Department of Pharmacy. Interested person may visit web pages of these departments for their details using the links provided at the left side of this page.</p>
                    <p>The faculty emphasize on hiring excellent faculty members actively engaged in quality teaching, high impact research, and services to the society. We have a good number of faculty members of international reputation in both teaching and research. We always welcome prospective persons having high academic and research standing with a strong motivation to become members of our team.</p>
                    <p>Students are enrolled in the bachelor and masters programs of these departments through a rigorous and competitive admission test. We always provide a state-of-the-art environment for teaching-learning so that every student can explore and maximize her/his potential to become a successful professional to serve the nation. We also provide a generous merit-based scholarship and need-based financial aid to the meritorious students to fulfill their dreams. We always encourage outstanding students to harvest the excellence of education provided in our programs.</p>
                    <p>Please feel free to contact me should have any query or want to provide any feedback.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="menudes">
                <ul>
                    <li><a href="CSE.aspx">Computer Science and Engineering</a></li>
                    <li><a href="EEE.aspx">Electric and Electroinic Engineering</a></li>
                    <li><a href="ETE.aspx">Electric and Telecommunication Engineering</a></li>
                    <li><a href="CIVIL.aspx">Civil
                        <br />
                        Engineering</a></li>
                    <div class="marca"></div>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

