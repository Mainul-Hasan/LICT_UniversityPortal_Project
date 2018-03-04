<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Import Namespace="System.Data" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DbConnectClass db = new DbConnectClass();
            DataSet ds = db.Select("SELECT * FROM tblCourse");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
    public string Query()
    {
        string dept = Request.QueryString["Dept"];
        return dept;
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Course Catalog</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="text-capitalize text-center">
                <h2><span style="color: darkblue">
                    <hr />
                    Course Catalog of <%= Query() %>
                    <hr />
                </span></h2>
            </div>
        </div>
        <div class="row">
            <div class="sidebar col-md-3 col-sm-3">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item clearfix"><a href="undergraduate-programs.aspx"><i class="fa fa-angle-right"></i>Undergraduate Programs</a></li>
                    <li class="list-group-item clearfix"><a href="graduate-programs.aspx"><i class="fa fa-angle-right"></i>Graduate Programs</a></li>
                    <li class="list-group-item clearfix"><a href="course-catalog.aspx"><i class="fa fa-angle-right"></i>Course Catalog</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Publications</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Research Area</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Lab Facilities</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Achievements</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Urgent Notices</a></li>
                    <li class="list-group-item clearfix"><a href="javascript:;"><i class="fa fa-angle-right"></i>Upcoming Events</a></li>
                </ul>
            </div>
            <div class="col-md-9">
                <h4>Undergraduate Course Outline :</h4>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Year 1</a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="card card-block">
                                    <h3>1st Semester </h3>
                                    <table class="table table-bordered">
                                        <tr>
                                            <th rowspan="2">Sl NO</th>
                                            <th rowspan="2">Course No</th>
                                            <th rowspan="2">Course Title</th>
                                            <th colspan="2">Credit Hours</th>
                                            <th colspan="2">Contact Hour / Week</th>
                                            <th rowspan="2">Prerequsite Course</th>
                                        </tr>
                                        <tr>
                                            <td>Theory</td>
                                            <td>Practical</td>
                                            <td>Theory</td>
                                            <td>Practical</td>
                                        </tr>
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("Id") %></td>
                                                    <td><%# Eval("Course_Number") %></td>
                                                    <td><%# Eval("Course_Title") %></td>
                                                    <td><%# Eval("Credit_Hours_Theory") %></td>
                                                    <td><%# Eval("Credit_Hours_Practical") %></td>
                                                    <td><%# Eval("Contact_Hours_Theory") %></td>
                                                    <td><%# Eval("Contact_Hours_Practical") %></td>
                                                    <td><%# Eval("Prerequsite_Course") %></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </table>
                                </div>
                                <div>
                                    <h3>2nd Semester</h3>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th rowspan="2">Sl NO</th>
                                                <th rowspan="2">Course No</th>
                                                <th rowspan="2">Course Title</th>
                                                <th colspan="2">Credit Hours</th>
                                                <th colspan="2">Contact Hour / Week</th>
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
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Year 2</a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div>
                                    <h3>3rd Semester </h3>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th rowspan="2">Sl NO</th>
                                                <th rowspan="2">Course No</th>
                                                <th rowspan="2">Course Title</th>
                                                <th colspan="2">Credit Hours</th>
                                                <th colspan="2">Contact Hour / Week</th>
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
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th rowspan="2">Sl NO</th>
                                                <th rowspan="2">Course No</th>
                                                <th rowspan="2">Course Title</th>
                                                <th colspan="2">Credit Hours</th>
                                                <th colspan="2">Contact Hour / Week</th>
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
                                                <td>Object Oriented programming 2 Sessional</td>
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
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Year 3</a>
                            </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="card card-block">
                                    <h3>5th Semester </h3>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th rowspan="2">Sl NO</th>
                                                <th rowspan="2">Course No</th>
                                                <th rowspan="2">Course Title</th>
                                                <th colspan="2">Credit Hours</th>
                                                <th colspan="2">Contact Hour / Week</th>
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
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th rowspan="2">Sl NO</th>
                                                <th rowspan="2">Course No</th>
                                                <th rowspan="2">Course Title</th>
                                                <th colspan="2">Credit Hours</th>
                                                <th colspan="2">Contact Hour / Week</th>
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
                                                <td></td>
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
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Year 4</a>
                            </h4>
                        </div>
                        <div id="collapse4" class="panel-collapse collapse">
                            <div class="panel-body">
                                <div class="card card-block">
                                    <h3>7th Semester </h3>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th rowspan="2">Sl NO</th>
                                                <th rowspan="2">Course No</th>
                                                <th rowspan="2">Course Title</th>
                                                <th colspan="2">Credit Hours

                                                </th>
                                                <th colspan="2">Contact Hour / Week


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
                                                <td></td>
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
                                    <table class="table table-bordered">
                                        <thead>

                                            <tr>
                                                <th rowspan="2">Sl NO</th>
                                                <th rowspan="2">Course No</th>
                                                <th rowspan="2">Course Title</th>
                                                <th colspan="2">Credit Hours

                                                </th>
                                                <th colspan="2">Contact Hour / Week


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
            </div>
        </div>
    </div>
</asp:Content>

