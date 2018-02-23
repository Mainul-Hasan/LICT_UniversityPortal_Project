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
                    Faculty of Liberal Arts and Social Science<hr />
                </span></h2>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="sidebar col-md-3 col-sm-3">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item clearfix"><a href="ELL.aspx"><i class="fa fa-angle-right"></i>Department of English Language and Literature</a></li>
                    <li class="list-group-item clearfix"><a href="Law.aspx"><i class="fa fa-angle-right"></i>Department of Law</a></li>
                    <li class="list-group-item clearfix"><a href="Bangla.aspx"><i class="fa fa-angle-right"></i>Department of Bangla</a></li>
                    <li class="list-group-item clearfix"><a href="Social.aspx"><i class="fa fa-angle-right"></i>Department of Social Science</a></li>
                    <li class="list-group-item clearfix"><a href="Political.aspx"><i class="fa fa-angle-right"></i>Department of Political Science</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <img src="assets/pages/img/people/img4-small.jpg" class="img-rounded" alt="Cinque Terre" width="80%" height="80%">
                <div class="" style="margin-top: 10px">
                    <p>
                        <strong class="text-uppercase" style="font-size: 15px;">Dr. Fouzia Mannan</strong><br />
                        <strong>Dean, Faculty of Liberal Arts and Social Sciences</strong><br />
                        <strong>Professor </strong>Dept. of Political Science
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

                    <p style="text-align: justify;"><span style="color: #000000;">Welcome to the Faculty of Liberal Arts and Social Sciences, East West University. The Faculty consists of the Departments of English, Department of Law, Department of Sociology, Department of Information Studies &amp; Library Sciences and the Department of Social Relations.</span></p>
                    <p style="text-align: justify;"><span style="color: #000000;">East West University aims at excellence in education. Our Liberal Arts and Social Sciences education involves close interactions between students and faculty members and exposure to practical and contemporary Liberal Arts and Social Sciences issues through international and nationals conferences, seminars, workshops, field trips and study tours.</span></p>
                    <p style="text-align: justify;"><span style="color: #000000;">Our faculties are highly research-oriented and strive towards knowledge creation through creating a bridge between theory and practice.There are many nationally &amp; internationally renowned researchers among our faculty members. Our students regularly take advantage of this situation by getting involved in research projects even at the undergraduate level. The students who graduate with a complete education from here go on to become most accomplished professionals, academics and scholars.</span></p>
                    <p style="text-align: justify;"><span style="color: #000000;">Student life at East West University actively extends beyond the traditional classroom setting. There are avenues for co-curricular activities. There are 26 clubs at the university to nurture student’s interests, whether it is in the form of music, debate, drama or photography. These clubs are instrumental in creating deep bonds among students and in developing their latent leadership qualities. Every student is encouraged to take up the challenge and work towards becoming a leader in both national and international level.</span></p>
                    <p style="text-align: justify;"><span style="color: #000000;">I also invite outstanding individuals committed to excellence in teaching and research to join our team of faculty members. For more information, please look at our current vacancies at, <a href="default.aspx" target="_blank" rel="noopener noreferrer">https://www.google.com</a>, and please do not hesitate to contact me for any further inquiries.</span></p>
                    <p style="text-align: justify;"><span style="color: #000000;">Our efforts here at East West University, are directed towards nurturing the growth of enlightened Liberal Arts and Social Sciences graduates who care about the society in particular and humanity in general. We strongly believe in, and strive to infuse the quality of leadership in all our students.</span></p>
                    <p style="text-align: justify;"><span style="color: #000000;">We look forward to hearing from you!</span></p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="menudes">
                <ul>
                    <li><a href="gallary.aspx">Computer Science and Engineering</a></li>
                    <li><a href="gallary.aspx">Electric and Electroinic Engineering</a></li>
                    <li><a href="gallary.aspx">Electric and Telecommunication Engineering</a></li>
                    <li><a href="gallary.aspx">Civil
                        <br />
                        Engineering</a></li>
                    <div class="marca"></div>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

