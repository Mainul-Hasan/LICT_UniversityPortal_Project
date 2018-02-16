<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feculty Sci Eng.aspx.cs" Inherits="feculty_Sci_Eng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
      
        .menudes {
            position: relative;
            overflow: hidden;
            
            height: 108px;
            line-height: 50px;
            margin: 50px auto;
            border-radius: 8px;
            background:aliceblue;
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
            font-size:18px;
            margin-right:;
            height: 88px;
            text-align: center;
        }
        .menudes ul li a {
            color:blue;
            text-decoration: none;
        }
        .marca {
            position: absolute;
            bottom: 2px;
            left: -12.5%; /* Al menos 1/2 del ancho de cada enlace */
            width: 12.5%; /* 1/2 del ancho de cada enlace */
            height: 4px;
            background:chocolate;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="padding-bottom:20px">
        <div class="row">
            <div class="text-capitalize text-center">
            <h2><span style="color:darkblue"><hr />Faculty of Business<hr /></span></h2>
            </div>
        </div>
    </div>
    <div class="container">
    <div class="row">
        <div class="sidebar col-md-3 col-sm-3">
            <ul class="list-group margin-bottom-25 sidebar-menu">
                <li class="list-group-item clearfix"><a href="Login.aspx"><i class="fa fa-angle-right"></i>Login</a></li>
                
                <li class="list-group-item clearfix"><a href="Registration.aspx"><i class="fa fa-angle-right">Register</i></a></li>
                <li class="list-group-item clearfix"><a href="gallary.aspx"><i class="fa fa-angle-right"></i>Gallary</a></li>
            </ul>
        </div>
        <div class="col-md-4">
            <h2></h2>
            <img src="assets/pages/img/people/img3-small.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236">
            <div class=""style="margin-top:10px">
            <p><strong class="mark text-uppercase" style="font-size: 15px;">Dr.Mozammel Hoque Azad Khan</strong><br/>
                <strong>Dean,Feculty of Science & Engineering</strong><br/>
                <strong>Professor </strong>Dept. of Computer science and Engineering</p> 
                <address>
                    <strong>Twitter, Inc.</strong><br>
                    1355 Market Street, Suite 900<br>
                    San Francisco, CA 94103<br>
                    <abbr title="Phone">P:</abbr> (123) 456-7890
                </address>

                <address>
                    <strong>Full Name</strong><br>
                    <a href="mailto:#">first.last@example.com</a>
                </address>         
            </div>
        </div>
        <div class="col-md-5">
            <h2></h2>
           
            <div class="caption text-justify" >
                 <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                     It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).



                 </p>
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
                    <li><a href="CIVIL.aspx">Civil <br/> Engineering</a></li>
                    <div class="marca"></div>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

