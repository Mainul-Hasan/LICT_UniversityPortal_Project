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
                    Faculty of Business<hr />
                </span></h2>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="sidebar col-md-3 col-sm-3">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item clearfix"><a href="Login.aspx"><i class="fa fa-angle-right"></i>Department of Business Administration</a></li>
                    <li class="list-group-item clearfix"><a href="Registration.aspx"><i class="fa fa-angle-right"></i>Department of Economics</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <img src="assets/pages/img/people/img7-small.jpg" class="img-rounded" alt="Cinque Terre" width="80%" height="80%">
                <div class="" style="margin-top: 10px">
                    <p>
                        <strong class="text-uppercase" style="font-size: 15px;">Professor Dr. Tanbir Ahmed Chowdhury</strong><br />
                        <strong>Dean, Faculty of Business and Economics</strong><br />
                        <strong>Professor </strong>Dept. of Business Administration
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
                    <p style="text-align: justify;">Welcome to the Faculty of Business and Economics, East West University. The Bachelor of Business Administration (BBA), Master of Business Administration (MBA), Master of Business Administration for Executives (EMBA), Master of Bank Management (MBM), Bachelor of Social Science (Economics), and Master of Development Studies (MDS) are  offered in the Faculty of Business and Economics. The Faculty is guided by three core principles:</p>
                    <ul>
                        <li>Education should be accessible and efficient</li>
                        <li>Programs should be current, relevant, and consistently revised</li>
                        <li>All courses should be integrated with real-world environments</li>
                    </ul>
                    <p>
                        <strong>Quality of Programs</strong><br />
                        Undergraduate and graduate degrees in the Faculty of Business and Economics open the doors to opportunities for career advancement and leadership positions. Rich with multinational assignments, these programs are designed to enhance global business and economic skills and flexible technological knowledge, which meet current and future challenges.
                    </p>
                    <p>
                        <strong>Diversity</strong><br />
                        The Faculty of Business and Economics believes that diversity is a precondition of academic quality that contributes to the completeness of students&#8217; education.  This position is based on the tenet that everyone must acquire the requisite knowledge, skills, attitudes, and behaviors to function effectively in both national and international environments. Diversity efforts are integrated throughout the Faculty’s programs, faculty, and staff representation, and campus climate.
                    </p>
                    <p>
                        <strong>Faculty Qualifications</strong><br />
                        Our teachers are research-oriented and create knowledge through research. There are many nationally &amp; internationally renowned researchers among our faculty members. Their theoretical and practical experiences enrich their classroom teaching and offer broad, relevant perspectives needed to develop managerial and leadership skills.
                    </p>
                    <p>&nbsp;</p>
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

