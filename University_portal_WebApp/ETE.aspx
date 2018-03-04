<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CSE.aspx.cs" Inherits="CSE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        td {
            padding: 10px;
        }

        table, tr, td, th {
            border: 1px solid black;
            color: black;
        }

        table {
            border-collapse: collapse;
            color: aliceblue;
        }

        h3 {
            padding-bottom: 10px;
            text-align: justify;
            color: chocolate;
            font-size: 40px;
        }

        input {
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="text-capitalize text-center">
                <h2><span style="color: darkblue">
                    <hr />
                    Department of Electrical and Telecommunications Engineering<hr />
                </span></h2>
            </div>
        </div>
        <div class="row">
            <div class="sidebar col-md-3 col-sm-3">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item clearfix"><a href="undergraduate-programs.aspx"><i class="fa fa-angle-right"></i>Undergraduate Programs</a></li>
                    <li class="list-group-item clearfix"><a href="graduate-programs.aspx"><i class="fa fa-angle-right"></i>Graduate Programs</a></li>
                    <li class="list-group-item clearfix"><a href="course-catalog.aspx?Dept=ETE"><i class="fa fa-angle-right"></i>Course Catalog</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Publications</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Research Area</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Lab Facilities</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Achievements</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Urgent Notices</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Upcoming Events</a></li>
                </ul>
            </div>
            <div class="row col-md-offset-6">
                <img src="assets/pages/img/people/img3-small.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="300">
                <div class="" style="margin-top: 10px">
                    <p>
                        <strong class="mark text-uppercase" style="font-size: 15px;">Dr. Ahmed Wasif Reza</strong><br />

                        <strong>Chairmen </strong>Dept. of Computer science and Engineering
                    </p>

                    <address>
                        <strong>Email :</strong><br>
                        <a href="mailto:#">wasif@ewubd.edu</a>
                    </address>
                </div>
            </div>
            <div class="row text-justify col-md-offset-3">
                <div class="caption text-justify">
                    <p>
                        We welcome you on behalf of the faculty, staff, and students of the Department of Computer Science and Engineering (CSE) at the East West University (EWU). It is one of the few private universities in Bangladesh that has got a Permanent Certificate from the Ministry of Education by fulfilling all the criteria set for the status. CSE Department at EWU was founded in 1996 at the very beginning of the establishment of the university. CSE Department is now the second largest department of East West University. It has about 1200 students and 28 qualified full-time faculty members (11 faculties having Ph.D. degrees from reputed universities). Nevertheless, the present civilization cannot be thought without the use of Information Technology (IT) and IT Enabled Services (ITES). IT/ITES are basically merging of many technologies, where CSE play the most vital role. We have been able to establish ourselves as a leading CSE department in the country. Our undergraduate program is highly competitive, and we have attracted talented candidates from the country. We have taken up all the challenges to produce quality graduates who can become leaders in the global arena and we are committed to educate the next generation of computer engineers for the nation. At present, the department offers the following programs:
                    </p>
                    <ul>
                        <li>B.S. in Computer Science and Engineering</li>
                        <li>M.S. in Computer Science and Engineering</li>
                    </ul>
                    <p>
                        CSE Department is well-equipped with state of the art facilities for teaching and research. Key research areas include different areas of Computer Science and Engineering, such as Software Systems, Information Systems, Intelligent Systems, Hardware Systems, and Networking Systems. Graduates with a degree in CSE have the best job prospects in IT Parks and other IT/ITES industries in Bangladesh and abroad. More than 100 EWU students completed their post graduate studies from home and abroad, including USA, UK, Canada, Germany, Australia, Ireland, Sweden, Italy, Koera, etc. Number of Alumni is now faculty members in various universities in Bangladesh. Also, number of Alumni is currently engaged in different research lab in USA, UK, Italy, Ireland, Australia, Korea, etc. Our Alumni works in Google, Microsoft, NVIDEA, etc., and also in different renowned companies in overseas and local industries, like Two Sigma, NewsCred, Wislyn, Allied Vision, Advent Software, Nokia Siemens Networks, Samsung, Huawei,  Ericsson, Grameenphone, Airtel, Bangla Link, TeleTalk, Robi, ICT division, BEPZA, Dhaka Stock Exchange Limited, DataSoft, BRAC, IPvision, Therap Services, REVE Systems, Cefalo, etc. EWU was proudly included in Honorable Mention in ACM ICPC World Final 2008. B.Sc. in CSE program at EWU has been accredited as a professional degree program by the Board of Accreditation for Engineering and Technical Education (BAETE) of the Institution of Engineers, Bangladesh (IEB). Our CSE graduates can become a member of IEB. There is also a continuous effort to improve and innovate our CSE curriculum to adapt Outcome Based Education to meet industry needs. In short, the aim of CSE Department is to produce high caliber graduates who will be able to contribute to our nation development in high technology sectors to support our vision and mission.
                    </p>
                    <p><strong>Vision Statement of CSE Department</strong></p>
                    <p>To be internationally renowned in Computer Science and Engineering and to exalt excellence in education, research and industrial profession for sustainable transformation of the society.</p>
                    <p><strong>Mission of CSE Department</strong></p>
                    <ul>
                        <li>To advance knowledge and learning of evolving challenges in Computer Science and Engineering through quality education and research towards the development of the society.</li>
                        <li>To sustain an outstanding hub dedicated to excellence in teaching, learning, and research and to become internationally recognized to meet national and international needs.</li>
                        <li>To enhance the quality of students with advanced knowledge and skills of Computer Science and Engineering to meet contemporary industrial requirements.</li>
                    </ul>
                    <p><strong>Program Educational Objectives (PEOs) of CSE Department</strong></p>
                    <p>Graduates of the B. Sc. in Computer Science and Engineering (CSE) program are expected to attain the following Program Educational Objectives (PEO) within few years, such as 3-5 years, of graduation.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 text-center">
                <h4 style="color: chocolate">
                    <hr />
                    Contact Us
                    <hr />
                </h4>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-3">
                <address>
                    <strong>Department Office:</strong><br>
                    Department of CSE |
                    Ext – 206<br />
                    Fax: +880-2-9897322<br>
                    <abbr title="Phone">P:</abbr>
                    (123)  09666775577 
                </address>

                <address>
                    <strong>Email:</strong><br>
                    <a href="mailto:#">cse@ewubd.edu</a>
                </address>

            </div>
            <div class="col-md-4">
                <address>
                    <strong>Department Chairperson:</strong><br>
                    Dr. Ahmed Wasif Reza | Ext – 221<br />
                    Fax: +880-2-9897322
                    <br>
                    <abbr title="Phone">P:</abbr>
                    (123)09666775577 
                </address>

                <address>
                    <strong>Email: </strong>
                    <br>
                    <a href="mailto:#">wasif@ewubd.edu</a>
                </address>

            </div>
        </div>

    </div>
</asp:Content>

