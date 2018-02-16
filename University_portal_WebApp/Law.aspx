<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CSE.aspx.cs" Inherits="CSE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        td{
            padding: 10px;
        }

        table,tr,td,th {
            border:1px solid black;
            color: black

        }
        table{
            border-collapse:collapse;
          
            color: aliceblue;
        }
        h3{
            padding-bottom: 10px;
            text-align: justify;
            color:chocolate;
            font-size: 40px;
        }
        input{
            float: right;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container" style="padding-bottom:20px">
        <div class="row">
            <div class="text-capitalize text-center">
            <h2><span style="color:darkblue"><hr />Department of Law<hr /></span></h2>
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
        <div class="row col-md-offset-6">
            <h2></h2>
            <img src="assets/pages/img/people/img3-small.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236">
            <div class=""style="margin-top:10px">
            <p><strong class="mark text-uppercase" style="font-size: 15px;">Dr. Ahmed Wasif Reza</strong><br/>
                
                <strong>Chairmen </strong>Dept. of Computer science and Engineering</p> 

                <address>
                    <strong>Email :</strong><br>
                    <a href="mailto:#"> wasif@ewubd.edu</a>
                </address>         
            </div>
        </div>
        <div class="row text-justify col-md-offset-3">
            <h2></h2>
           
            <div class="caption text-justify" >
                 <p>
                     We welcome you on behalf of the faculty, staff, and students of the Department of Computer Science and Engineering (CSE) at the East West University (EWU). It is one of the few private universities in Bangladesh that has got a Permanent Certificate from the Ministry of Education by fulfilling all the criteria set for the status. CSE Department at EWU was founded in 1996 at the very beginning of the establishment of the university. CSE Department is now the second largest department of East West University. It has about 1200 students and 28 qualified full-time faculty members (11 faculties having Ph.D. degrees from reputed universities). Nevertheless, the present civilization cannot be thought without the use of Information Technology (IT) and IT Enabled Services (ITES). IT/ITES are basically merging of many technologies, where CSE play the most vital role. We have been able to establish ourselves as a leading CSE department in the country. Our undergraduate program is highly competitive, and we have attracted talented candidates from the country. We have taken up all the challenges to produce quality graduates who can become leaders in the global arena and we are committed to educate the next generation of computer engineers for the nation.

. At present, the department offers the following programs:
                     <ul>
                         <li>B.S. in Computer Science and Engineering</li>
                         <li>M.S. in Computer Science and Engineering</li>
                     </ul>
    
    

CSE Department is well-equipped with state of the art facilities for teaching and research. Key research areas include different areas of Computer Science and Engineering, such as Software Systems, Information Systems, Intelligent Systems, Hardware Systems, and Networking Systems. Graduates with a degree in CSE have the best job prospects in IT Parks and other IT/ITES industries in Bangladesh and abroad. More than 100 EWU students completed their post graduate studies from home and abroad, including USA, UK, Canada, Germany, Australia, Ireland, Sweden, Italy, Koera, etc. Number of Alumni is now faculty members in various universities in Bangladesh. Also, number of Alumni is currently engaged in different research lab in USA, UK, Italy, Ireland, Australia, Korea, etc. Our Alumni works in Google, Microsoft, NVIDEA, etc., and also in different renowned companies in overseas and local industries, like Two Sigma, NewsCred, Wislyn, Allied Vision, Advent Software, Nokia Siemens Networks, Samsung, Huawei,  Ericsson, Grameenphone, Airtel, Bangla Link, TeleTalk, Robi, ICT division, BEPZA, Dhaka Stock Exchange Limited, DataSoft, BRAC, IPvision, Therap Services, REVE Systems, Cefalo, etc. EWU was proudly included in Honorable Mention in ACM ICPC World Final 2008.

B.Sc. in CSE program at EWU has been accredited as a professional degree program by the Board of Accreditation for Engineering and Technical Education (BAETE) of the Institution of Engineers, Bangladesh (IEB). Our CSE graduates can become a member of IEB. There is also a continuous effort to improve and innovate our CSE curriculum to adapt Outcome Based Education to meet industry needs. In short, the aim of CSE Department is to produce high caliber graduates who will be able to contribute to our nation development in high technology sectors to support our vision and mission.<br/>
                     <br/>
<strong>Vision Statement of CSE Department</strong><br/>
                     <br/>
To be internationally renowned in Computer Science and Engineering and to exalt excellence in education, research and industrial profession for sustainable transformation of the society.
<br/>
                     <br/>
<strong>Mission of CSE Department</strong><br/><br/>

<ul>
    <li>To advance knowledge and learning of evolving challenges in Computer Science and Engineering through quality education and research towards the development of the society.</li>
    <li>To sustain an outstanding hub dedicated to excellence in teaching, learning, and research and to become internationally recognized to meet national and international needs.</li>
    <li>To enhance the quality of students with advanced knowledge and skills of Computer Science and Engineering to meet contemporary industrial requirements.</li>
</ul>

                     <br/>
<strong>Program Educational Objectives (PEOs) of CSE Department</strong><br/>

Graduates of the B. Sc. in Computer Science and Engineering (CSE) program are expected to attain the following Program Educational Objectives (PEO) within few years, such as 3-5 years, of graduation.
                 </p>
            </div>
        </div>
    </div>
    </div>
    <div  class="container">
        <div class="row">
            <div class="col-md-offset-3">
            <h4>Undergraduate Course Outline :</h4>
                <p>
                    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        First Year
                    </a>
                    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample1" aria-expanded="false" aria-controls="collapseExample1">
                        Second Year
                    </a>
                    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample2" aria-expanded="false" aria-controls="collapseExample2">
                        Thired Year
                    </a>
                    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample3" aria-expanded="false" aria-controls="collapseExample3">
                        Final Year
                    </a>
                  <%--  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                        Button with data-target
                    </button>--%>
                </p>
               <div class="collapse" id="collapseExample">
                    <div class="card card-block">
                       <h3>1st Semester </h3>
    <table>

        <tr>
            <th rowspan="2">Sl NO</th>
            <th rowspan="2">Course No</th>
            <th rowspan="2">Course Title</th>
            <th colspan="2">
                Credit Hours

            </th>
            <th colspan="2">
                Contact Hour / Week


            </th>
            <th rowspan="2">prerequsit Course</th>

        </tr>

        <tr>
            <td>Theory</td>
            <td>Practical</td>
            <td>Theory</td>
            <td>Practical</td>


        </tr>


        <tr>
            <td>1</td>
            <td>URAL-1101</td>
            <td>Elementary Arabic</td>
            <td>1</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td></td>

        </tr>
        <tr>
            <td>2</td>
            <td>UREL-1103</td>
            <td>Advanced English</td>
            <td>1</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td></td>

        </tr>
        <tr>
            <td>3</td>
            <td>URIS-1101</td>
            <td>Islamic Aqidah</td>
            <td>1</td>
            <td></td>
            <td>1</td>
            <td></td>
            <td></td>

        </tr>
        <tr>
            <td>4</td>
            <td>MATH-1101</td>
            <td>Mathmatics 1</td>
            <td>3</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td></td>

        </tr>
        <tr>
            <td>5</td>
            <td>PHY-1101</td>
            <td>Physics 1</td>
            <td>3</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td></td>

        </tr>
        <tr>
            <td>6</td>
            <td>PHY-1102</td>
            <td>Physics 1 Sessional</td>
            <td></td>
            <td>1</td>
            <td></td>
            <td>1</td>
            <td></td>

        </tr>
        <tr>
            <td>7</td>
            <td>EEE-1105</td>
            <td>Basic Electrical Eng</td>
            <td>3</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td></td>

        </tr>
        <tr>
            <td>8</td>
            <td>EEE-1106</td>
            <td>Basic Electrical Eng Sessional</td>
            <td></td>
            <td>1</td>
            <td></td>
            <td>2</td>
            <td></td>
        </tr>
        <tr>
            <td>9</td>
            <td>CSE-1101</td>
            <td>Computer Funmentals</td>
            <td>2</td>
            <td></td>
            <td>2</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>10</td>
            <td>CSE-1102</td>
            <td>Computer Fundamentals Sessional</td>
            <td></td>
            <td>1</td>
            <td></td>
            <td>2</td>
            <td></td>
        </tr>

    </table>
                    </div>
                   <div>
                       <h3>2nd Semester</h3>
                        <table>
                      <thead>

    <tr>
        <th rowspan="2">Sl NO</th>
        <th rowspan="2">Course No</th>
        <th rowspan="2">Course Title</th>
        <th colspan="2">
            Credit Hours

        </th>
        <th colspan="2">
            Contact Hour / Week


        </th>
        <th rowspan="2">prerequsit Course</th>

    </tr>

    <tr>
        <td>Theory</td>
        <td>Practical</td>
        <td>Theory</td>
        <td>Practical</td>


    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>URIS-1203</td>
        <td>Introduction to Ibadah</td>
        <td>1</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td></td>
    </tr>

    <tr>
        <td>2</td>
        <td>MATH-1201</td>
        <td>Mathmatics 2</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>MATH-1101</td>
    </tr>

    <tr>
        <td>3</td>
        <td>PHY-1201</td>
        <td>Physics 2</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>PHY-1101</td>
    </tr>

    <tr>
        <td>4</td>
        <td>PHY-1202</td>
        <td>Physical 2 sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>1</td>
        <td></td>
    </tr>

    <tr>
        <td>5</td>
        <td>STAT-1201</td>
        <td>Statistics</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td></td>
    </tr>

    <tr>
        <td>6</td>
        <td>EEE-1205</td>
        <td>Electronic Device and Circuit</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td>EEE-1105</td>
    </tr>

    <tr>
        <td>7</td>
        <td>EEE-1206</td>
        <td>Electronic Device and Curcuit Sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>
    </tr>

    <tr>
        <td>8</td>
        <td>CSE-1201</td>
        <td>Structure Programming</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td></td>
    </tr>

    <tr>
        <td>9</td>
        <td>CSE-1202</td>
        <td>Structure Programming Sessional</td>
        <td></td>
        <td>1.5</td>
        <td></td>
        <td>3</td>
        <td></td>
    </tr>

    <tr>
        <td>10</td>
        <td>CE-1202</td>
        <td>Engineering Drowing</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>
    </tr>

    <tr>
        <td>11</td>
        <td>CSE-1203</td>
        <td>Discrete Mathmatics</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td></td>
    </tr>
    </tbody>


</table>
                   </div>
                </div>
                <div class="collapse" id="collapseExample1">
                    <div>
                            <h3>3rd Semester </h3>
    <table>
        <thead>

        <tr>
            <th rowspan="2">Sl NO</th>
            <th rowspan="2">Course No</th>
            <th rowspan="2">Course Title</th>
            <th colspan="2">
                Credit Hours

            </th>
            <th colspan="2">
                Contact Hour / Week


            </th>
            <th rowspan="2">prerequsit Course</th>

        </tr>

        <tr>
            <td>Theory</td>
            <td>Practical</td>
            <td>Theory</td>
            <td>Practical</td>


        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>URIS-2303</td>
            <td>Introduction to Quran and Sunnah</td>
            <td>1</td>
            <td></td>
            <td>2</td>
            <td></td>
            <td></td>

        </tr>
        <tr>
            <td>2</td>
            <td>MATH-2301</td>
            <td>Mathmatics 3</td>
            <td>3</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td>MATH-1201</td>

        </tr>
        <tr>
            <td>3</td>
            <td>CHEM-2301</td>
            <td>Chemistry</td>
            <td>3</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td></td>

        </tr>
        <tr>
            <td>4</td>
            <td>CSE-2301</td>
            <td>Object oriented Programming 1</td>
            <td>3</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td>CSE-1201</td>

        </tr>
        <tr>
            <td>5</td>
            <td>CSE-2302</td>
            <td>Object Oriented Programming 1 Sessional</td>
            <td></td>
            <td>1</td>
            <td></td>
            <td>2</td>
            <td></td>

        </tr>
        <tr>
            <td>6</td>
            <td>CSE-2303</td>
            <td>Data Structure</td>
            <td>3</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td>CSE-1201</td>

        </tr>
        <tr>
            <td>7</td>
            <td>CSE-2304</td>
            <td>Data Structure Sessional</td>
            <td></td>
            <td>1</td>
            <td></td>
            <td>2</td>
            <td></td>

        </tr>
        <tr>
            <td>8</td>
            <td>CSE-2305</td>
            <td>Digital Logic Design</td>
            <td>3</td>
            <td></td>
            <td>3</td>
            <td></td>
            <td>EEE-1205</td>

        </tr>
        <tr>
            <td>9</td>
            <td>CSE-2306</td>
            <td>Digital Logic Design Sessional</td>
            <td></td>
            <td>1</td>
            <td></td>
            <td>2</td>
            <td></td>

        </tr>
        </tbody>


    </table>
                        </div>
                    <div class="card card-block">
                       <h3>4th Semester </h3>
<table>
    <thead>


    <tr>
        <th rowspan="2">Sl NO</th>
        <th rowspan="2">Course No</th>
        <th rowspan="2">Course Title</th>
        <th colspan="2">
            Credit Hours

        </th>
        <th colspan="2">
            Contact Hour / Week


        </th>
        <th rowspan="2">prerequsit Course</th>

    </tr>

    <tr>
        <td>Theory</td>
        <td>Practical</td>
        <td>Theory</td>
        <td>Practical</td>


    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>CSE-2403</td>
        <td>Computer Algorithm</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>CSE-2303</td>

    </tr>
    <tr>
        <td>2</td>
        <td>CSE-2404</td>
        <td>Computer Algorithm Sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>

    </tr>
    <tr>
        <td>3</td>
        <td>CSE-2405</td>
        <td>Digital Electric and Puls Technique</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>EEE-1205</td>

    </tr>
    <tr>
        <td>4</td>
        <td>CSE-2406</td>
        <td>Digital Electric and Puls Technique Sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>

    </tr>
    <tr>
        <td>5</td>
        <td>CSE-2407</td>
        <td>DataBase System</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>6</td>
        <td>CSE-2408</td>
        <td>DataBase System Sessional</td>
        <td></td>
        <td>1.5</td>
        <td></td>
        <td>3</td>
        <td></td>

    </tr>
    <tr>
        <td>7</td>
        <td>CSE-2410</td>
        <td>Assembly Language</td>
        <td>2</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>8</td>
        <td>CSE-2401</td>
        <td>Object Oriented programming 2</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td>CSE-2301</td>

    </tr>
    <tr>
        <td>9</td>
        <td>ACC-2401</td>
        <td>Accounting</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>10</td>
        <td>CSE-2402</td>
        <td> Object Oriented programming 2 Sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>1</td>
        <td></td>

    </tr>
    <tr>
        <td>11</td>
        <td>MATH-2401</td>
        <td>Mathmatics 4</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>MATH-2301</td>

    </tr>
    </tbody>


</table>
                        
                    </div>
                </div>
                <div class="collapse" id="collapseExample2">
                    <div class="card card-block">
                       <h3>5th Semester </h3>
<table>
    <thead>

    <tr>
        <th rowspan="2">Sl NO</th>
        <th rowspan="2">Course No</th>
        <th rowspan="2">Course Title</th>
        <th colspan="2">
            Credit Hours

        </th>
        <th colspan="2">
            Contact Hour / Week


        </th>
        <th rowspan="2">prerequsit Course</th>

    </tr>

    <tr>
        <td>Theory</td>
        <td>Practical</td>
        <td>Theory</td>
        <td>Practical</td>


    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>URIS-3505</td>
        <td>Goverment and Political Thought</td>
        <td>1</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>2</td>
        <td>ECON-3501</td>
        <td>Economics</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>3</td>
        <td>MATH-3501</td>
        <td>Mathmatics 5</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>MATH-2401</td>

    </tr>
    <tr>
        <td>4</td>
        <td>EEE-3507</td>
        <td>Electrical Drive</td>
        <td>1</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>5</td>
        <td>EEE-3508</td>
        <td>Electrical Drive Sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>1</td>
        <td></td>

    </tr>
    <tr>
        <td>6</td>
        <td>CSE-3501</td>
        <td>Microprocessor and Microcontroler</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>CSE-2410</td>

    </tr>
    <tr>
        <td>7</td>
        <td>CSE-3502</td>
        <td>Microprocessor and Microcontroler Sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>

    </tr>
    <tr>
        <td>8</td>
        <td>CSE-3503</td>
        <td>Computer Architecture</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>CSE-2305</td>

    </tr>
    <tr>
        <td>9</td>
        <td>CSE-3505</td>
        <td>Software Engineering</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>10</td>
        <td>CSE-3507</td>
        <td>internet Technology and Web Programming</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td>CSE-2401</td>

    </tr>
    <tr>
        <td>11</td>
        <td>CSE-3508</td>
        <td>internet Technology and Web Programming Sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>

    </tr>
    <tr>
        <td>12</td>
        <td>CSE-3509</td>
        <td>Technical Writing and Presentation</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>

    </tr>
    </tbody>


</table>
                    </div>
                    <div class="card card-block">
                       <h3>6th Semester </h3>
<table>
    <thead>

    <tr>
        <th rowspan="2">Sl NO</th>
        <th rowspan="2">Course No</th>
        <th rowspan="2">Course Title</th>
        <th colspan="2">
            Credit Hours

        </th>
        <th colspan="2">
            Contact Hour / Week


        </th>
        <th rowspan="2">prerequsit Course</th>

    </tr>

    <tr>
        <td>Theory</td>
        <td>Practical</td>
        <td>Theory</td>
        <td>Practical</td>


    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>URIS-3605</td>
        <td>Biography of the Prophet(SWT)</td>
        <td>1</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>2</td>
        <td>MGT-3601</td>
        <td>Industrial Management</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>3</td>
        <td>CSE-3601</td>
        <td>Data Communication</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>4</td>
        <td>CSE-3602</td>
        <td>Software Development Sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td>CSE-2408</td>

    </tr>
    <tr>
        <td>5</td>
        <td>CSE-3603</td>
        <td>Operating System</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>CSE-3503</td>

    </tr>
    <tr>
        <td>6</td>
        <td>CSE-3604</td>
        <td>Oeprating System Sessional</td>
        <td> </td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>

    </tr>
    <tr>
        <td>7</td>
        <td>CSE-3605</td>
        <td>System Analysis and Design</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td>CSE-3505</td>

    </tr>
    <tr>
        <td>8</td>
        <td>CSE-3606</td>
        <td>System Analysis and Design Sessional </td>
        <td></td>
        <td>1.5</td>
        <td></td>
        <td>3</td>
        <td></td>

    </tr>
    <tr>
        <td>9</td>
        <td>CSE-3607</td>
        <td>Numerical Methods</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td>CSE-1201</td>

    </tr>
    <tr>
        <td>10</td>
        <td>CSE-3608</td>
        <td>Numerical Methods Sessional</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>

    </tr>
    </tbody>



</table>
                    </div>
                </div>
                <div class="collapse" id="collapseExample3">
                    <div class="card card-block">
                       <h3>7th Semester </h3>
<table>
    <thead>
    <tr>
        <th rowspan="2">Sl NO</th>
        <th rowspan="2">Course No</th>
        <th rowspan="2">Course Title</th>
        <th colspan="2">
            Credit Hours

        </th>
        <th colspan="2">
            Contact Hour / Week


        </th>
        <th rowspan="2">prerequsit Course</th>

    </tr>

    <tr>
        <td>Theory</td>
        <td>Practical</td>
        <td>Theory</td>
        <td>Practical</td>


    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>URIS-4701</td>
        <td>History of Khulafa and al-Rashedin</td>
        <td>1</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>2</td>
        <td>CSE-4701</td>
        <td>Computer Networks</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>CSE-3601</td>

    </tr>
    <tr>
        <td>3</td>
        <td>CSE-4702</td>
        <td>Computer Networks Sessional</td>
        <td></td>
        <td>1.5</td>
        <td></td>
        <td>3</td>
        <td></td>

    </tr>
    <tr>
        <td>4</td>
        <td>CSE-4703</td>
        <td>Computer Graphics</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>Math-2401</td>

    </tr>
    <tr>
        <td>5</td>
        <td>CSE-4704</td>
        <td>Computer Graphics Sessional</td>
        <td> </td>
        <td>1.5</td>
        <td></td>
        <td>3</td>
        <td></td>

    </tr>
    <tr>
        <td>6</td>
        <td>CSE-4705</td>
        <td>Artificial Intelligence</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td>CSE-2407</td>

    </tr>
    <tr>
        <td>7</td>
        <td>CSE-4706</td>
        <td>Artificial Intelligence Sessional</td>
        <td></td>
        <td>1.5</td>
        <td></td>
        <td>3</td>
        <td></td>

    </tr>
    <tr>
        <td>8</td>
        <td>CSE-4708</td>
        <td>Field Work</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2 Weeks</td>
        <td></td>

    </tr>
    <tr>
        <td>9</td>
        <td>CSE-4710</td>
        <td>Recharge Methodology & Seminar</td>
        <td></td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>

    </tr>
    <tr>
        <td>10</td>
        <td>XYZ-47xy</td>
        <td>Option 1</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>11</td>
        <td>CSE-47xy</td>
        <td>Option 2</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>12</td>
        <td>CSE-47xy</td>
        <td>Option 2 Sessional</td>
        <td></td>
        <td>1.5</td>
        <td></td>
        <td>3</td>
        <td></td>

    </tr>
    </tbody>


</table>
                    </div>
                    <div class="card card-block">
                       <h3>8th Semester </h3>
<table>
    <thead>

    <tr>
        <th rowspan="2">Sl NO</th>
        <th rowspan="2">Course No</th>
        <th rowspan="2">Course Title</th>
        <th colspan="2">
            Credit Hours

        </th>
        <th colspan="2">
            Contact Hour / Week


        </th>
        <th rowspan="2">prerequsit Course</th>

    </tr>

    <tr>
        <td>Theory</td>
        <td>Practical</td>
        <td>Theory</td>
        <td>Practical</td>


    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td>URBS-4802</td>
        <td>Banglades Studies</td>
        <td>1</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>2</td>
        <td>CSE-4800</td>
        <td>Project/Thesis</td>
        <td></td>
        <td>4</td>
        <td></td>
        <td>8</td>
        <td></td>

    </tr>
    <tr>
        <td>3</td>
        <td>CSE-4801</td>
        <td>Compiler</td>
        <td>2</td>
        <td></td>
        <td>2</td>
        <td></td>
        <td>CSE-1203</td>

    </tr>
    <tr>
        <td>4</td>
        <td>CSE-48xy</td>
        <td>Option 3</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>4</td>
        <td>CSE-48xy</td>
        <td>Option 3 Sessional</td>
        <td></td>
        <td>1.5</td>
        <td></td>
        <td>3</td>
        <td></td>

    </tr>
    <tr>
        <td>5</td>
        <td>CSE-48xy</td>
        <td>Option 4</td>
        <td>3</td>
        <td></td>
        <td>3</td>
        <td></td>
        <td></td>

    </tr>
    <tr>
        <td>6</td>
        <td>CSE-48xy</td>
        <td>Option 4 Sessional</td>
        <td></td>
        <td>1.5</td>
        <td></td>
        <td>3</td>
        <td></td>

    </tr>
    <tr>
        <td>7</td>
        <td>CSE-4822</td>
        <td>General Viva</td>
        <td>1</td>
        <td></td>
        <td></td>
        <td>1</td>
        <td></td>

    </tr>
    </tbody>



</table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 text-center">
                <h4 style="color: chocolate"><hr />Contact Us <hr /></h4>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-3">
                <address>
                    <strong>Department Office:</strong><br>
                    Department of CSE |
                    Ext – 206<br/>
                    Fax: +880-2-9897322<br>
                    <abbr title="Phone">P:</abbr> (123)  09666775577 
                </address>

                <address>
                    <strong>Email:</strong><br>
                    <a href="mailto:#">cse@ewubd.edu</a>
                </address>         

            </div>
            <div class="col-md-4">
                <address>
                    <strong>Department Chairperson:</strong><br>
                    Dr. Ahmed Wasif Reza | Ext – 221<br/>
                    Fax: +880-2-9897322
                    <br>
                    <abbr title="Phone">P:</abbr> (123)09666775577 
                </address>

                <address>
                    <strong>Email: </strong><br>
                    <a href="mailto:#">wasif@ewubd.edu</a>
                </address>         

            </div>
        </div>
        
    </div>
</asp:Content>

