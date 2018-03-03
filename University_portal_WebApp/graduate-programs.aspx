<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="graduate-programs.aspx.cs" Inherits="graduate_programs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Graduate Programs</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="padding-bottom: 20px">
        <div class="row">
            <div class="text-capitalize text-center">
                <h2><span style="color: darkblue">
                    <hr />
                    Graduate Program<hr />
                </span></h2>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row margin-bottom-20">
            <div class="sidebar col-md-3 col-sm-3">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item clearfix"><a href="graduate-programs.aspx"><i class="fa fa-angle-right"></i>Graduate Programs</a></li>
                    <li class="list-group-item clearfix"><a href="graduate-tuition-fees.aspx"><i class="fa fa-angle-right"></i>Tuition fees</a></li>
                    <li class="list-group-item clearfix"><a href="graduate-dates-and-deadlines.aspx"><i class="fa fa-angle-right"></i>Dates & Deadline</a></li>
                    <li class="list-group-item clearfix"><a href="apply-now.aspx"><i class="fa fa-angle-right"></i>Apply Online</a></li>
                </ul>
            </div>
            <div class="col-md-9">
                <p style="text-align: justify">Prospective students should apply online <a href="http://admission.ewubd.edu/index.php" target="_blank">(http://admission.ewubd.edu)</a> or <a href="http://www.ewubd.edu/" target="_blank">(http://www.ewubd.edu)</a> by paying in cash at EWU Admission Office or by sending a bank draft of Taka 1,000 or US $13 to the Registrar’s Office.</p>
                <p style="text-align: justify">All correspondence and inquiries concerning admission to the university should be addressed to the Registrar’s office. Applicants may also contact EWU Admission Office at A/2 Jahurul Islam Avenue, Jahurul Islam City, Aftabnagar, Dhaka.</p>
                <p style="text-align: justify">Students seeking admission at EWU must qualify in the admission test. The date of the test is announced in major daily newspapers. Students are tested on the English Language (structure, vocabulary, comprehension and composition) and Basic Mathematics. Those who want to study Computer Science and Engineering and Electrical and Electronic Engineering/Information and Communications Engineering are required to have competence in HSC-level Mathematics and those intending to study pharmacy are required to have competence in HSC or A level Physics, Chemistry and Mathematics and Biology at SSC and or HSC level, while others are required to have reasonable proficiency in SSC-level Mathematics. Those who seek admission in BA (English) program are exempted from the Math Test.</p>
                <p style="text-align: justify">Results of the Admission test are announced within 3 days of the test. A list of successful candidates is posted on the Bulletin Board of the university and also in the university website.</p>

            </div>
        </div>
    </div>
</asp:Content>
