<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="undergraduate-tuition-fees.aspx.cs" Inherits="undergraduate_tuition_fees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Tution Fees | Undergraduate Programs</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="padding-bottom: 20px">
        <div class="row">
            <div class="text-capitalize text-center">
                <h2><span style="color: darkblue">
                    <hr />
                    Undergraduate Program<hr />
                </span></h2>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row margin-bottom-20">
            <div class="sidebar col-md-3 col-sm-3">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item clearfix"><a href="undergraduate-programs.aspx"><i class="fa fa-angle-right"></i>Undergraduate Programs</a></li>
                    <li class="list-group-item clearfix"><a href="undergraduate-tuition-fees.aspx"><i class="fa fa-angle-right"></i>Tuition fees</a></li>
                    <li class="list-group-item clearfix"><a href="undergraduate-dates-and-deadlines.aspx"><i class="fa fa-angle-right"></i>Dates & Deadline</a></li>
                    <li class="list-group-item clearfix"><a href="apply-now.aspx"><i class="fa fa-angle-right"></i>Apply Online</a></li>
                </ul>
            </div>
            <div class="col-md-9">
                <h3 style="text-align: center;"><span style="text-decoration: underline;"><strong>Tuition Fee</strong>: Per Credit<br />
                </span></h3>
                <h3 style="text-align: left;"><span style="text-decoration: underline;"><strong>Undergraduate Programs:</strong></span></h3>
                <table class="table" border="1" width="583px">
                    <tbody>
                        <tr>
                            <td style="text-align: center;" width="127"><strong>Name of Faculties</strong></td>
                            <td style="text-align: center;" width="213"><strong>Name of Programs</strong></td>
                            <td style="text-align: center;" width="243"><strong>Approved Tuition&#8217;s Fees per Credit with effect from Fall Semester 2015</strong></td>
                        </tr>
                        <tr>
                            <td rowspan="2" width="127">Business and Economics</td>
                            <td width="213">BBA</td>
                            <td style="text-align: center;" width="243">4,900/=</td>
                        </tr>
                        <tr>
                            <td width="213">BSS in Economics</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td rowspan="4" width="127">Liberal Arts and Social Sciences</td>
                            <td width="213">BA in English</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td width="213">BSS in Sociology</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td style="text-align: left;" width="213">BSS in Information Studies and Library Management (ISLM)</td>
                            <td style="text-align: center;" width="243">3,000/=</td>
                        </tr>
                        <tr>
                            <td width="213">LL.B (Hon&#8217;s)</td>
                            <td style="text-align: center;" width="243">3,000/= (for Fall 2015 to Summer 2018)</td>
                        </tr>
                        <tr>
                            <td rowspan="8" width="127">Science and Engineering</td>
                            <td width="213">BS. in Applied Statistics</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td width="213">B. Sc. in ETE</td>
                            <td style="text-align: center;" width="243">4,900/=</td>
                        </tr>
                        <tr>
                            <td width="213">B. Sc. in ICE</td>
                            <td style="text-align: center;" width="243">4,900/=</td>
                        </tr>
                        <tr>
                            <td width="213">B. Sc. in CSE</td>
                            <td style="text-align: center;" width="243">4,900/=</td>
                        </tr>
                        <tr>
                            <td width="213">B. Sc. in EEE</td>
                            <td style="text-align: center;" width="243">4,900/=</td>
                        </tr>
                        <tr>
                            <td width="213">B. Pharm.</td>
                            <td style="text-align: center;" width="243">4,900/= (Effective from Spring 2016)</td>
                        </tr>
                        <tr>
                            <td width="213">B. Sc. in GEB</td>
                            <td style="text-align: center;" width="243">4,900/=</td>
                        </tr>
                        <tr>
                            <td width="213">B.Sc. in Civil Engineering</td>
                            <td style="text-align: center;" width="243">4,900/=</td>
                        </tr>
                    </tbody>
                </table>
                <h3 style="text-align: center;"><span style="text-decoration: underline;"><strong>Tuition Fee</strong>: Details<br />
                </span></h3>
                <h3 style="text-align: left;"><span style="text-decoration: underline;"><strong>Undergraduate Programs:</strong></span></h3>
                <table class="table" border="1" width="670">
                    <tbody>
                        <tr>
                            <td style="text-align: center;" width="90"><strong>Name of</strong> <strong>Faculties</strong></td>
                            <td style="text-align: center;" width="109"><strong>Name of</strong> <strong>Programs</strong></td>
                            <td style="text-align: center;" width="58"><strong>Credits</strong></td>
                            <td style="text-align: center;" width="104"><strong>Tuition Fees</strong></td>
                            <td style="text-align: center;" width="94"><strong>Lab &amp; Activities Fees</strong></td>
                            <td style="text-align: center;" width="81"><strong>Admission Fee</strong></td>
                            <td style="text-align: center;" width="113"><strong>Grand Total</strong></td>
                        </tr>
                        <tr>
                            <td rowspan="2" width="90">Business and Economics</td>
                            <td width="109">BBA</td>
                            <td width="58">123</td>
                            <td width="104">5,81,700/=</td>
                            <td width="94">18,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">6,14,820/=</td>
                        </tr>
                        <tr>
                            <td width="109">BSS in Economics</td>
                            <td width="58">123</td>
                            <td width="104">4,72,500/=</td>
                            <td width="94">18,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">5,05,620/=</td>
                        </tr>
                        <tr>
                            <td rowspan="4" width="90">Liberal Arts and Social Sciences</td>
                            <td width="109">BA in English</td>
                            <td width="58">123</td>
                            <td width="104">4,64,100/=</td>
                            <td width="94">18,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">4,97,220/=</td>
                        </tr>
                        <tr>
                            <td width="109">BSS in Sociology</td>
                            <td width="58">123</td>
                            <td width="104">4,55,700/=</td>
                            <td width="94">18,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">4,88,820/=</td>
                        </tr>
                        <tr>
                            <td style="text-align: left;" width="109">BSS in Information Studies and Library Management (ISLM)</td>
                            <td width="58">123</td>
                            <td width="104">4,00,500/=</td>
                            <td width="94">18,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">4,33,620/=</td>
                        </tr>
                        <tr>
                            <td width="109">LL.B (Hon&#8217;s)</td>
                            <td width="58">135</td>
                            <td width="104">4,32,300/=</td>
                            <td width="94">18,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">4,65,420/=</td>
                        </tr>
                        <tr>
                            <td rowspan="8" width="90">Science and Engineering</td>
                            <td width="109">BS in Applied Statistics</td>
                            <td width="58">127</td>
                            <td width="104">4,78,100/=</td>
                            <td width="94">18,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">5,11,220/=</td>
                        </tr>
                        <tr>
                            <td width="109">B. Sc. in ETE</td>
                            <td width="58">140</td>
                            <td width="104">6,77,600/=</td>
                            <td width="94">36,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">7,28,720/=</td>
                        </tr>
                        <tr>
                            <td width="109">B. Sc. in ICE</td>
                            <td width="58">140</td>
                            <td width="104">6,77,600/=</td>
                            <td width="94">36,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">7,28,720/=</td>
                        </tr>
                        <tr>
                            <td width="109">B. Sc. in CSE</td>
                            <td width="58">140</td>
                            <td width="104">6,77,600/=</td>
                            <td width="94">36,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">7,28,720/=</td>
                        </tr>
                        <tr>
                            <td width="109">B. Sc. in EEE</td>
                            <td width="58">140</td>
                            <td width="104">6,77,600/=</td>
                            <td width="94">36,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">7,28,720/=</td>
                        </tr>
                        <tr>
                            <td width="109">B. Pharm.</td>
                            <td width="58">158</td>
                            <td width="104">7,65,800/=</td>
                            <td width="94">36,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">8,16,920/=</td>
                        </tr>
                        <tr>
                            <td width="109">B. Sc. in GEB</td>
                            <td width="58">133</td>
                            <td width="104">6,43,300/=</td>
                            <td width="94">36,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">6,94,420/=</td>
                        </tr>
                        <tr>
                            <td width="109">B.Sc. in Civil Engineering</td>
                            <td width="58">156.5</td>
                            <td width="104">7,58,450/=</td>
                            <td width="94">36,120/=</td>
                            <td width="81">15,000/=</td>
                            <td width="113">8,09,570/=</td>
                        </tr>
                    </tbody>
                </table>
                <p><strong>Lab Fee:</strong> Tk. 2500/- per semester for CSE, CSC, ICE, ETE  &amp; EEE programs, and Tk. 1,000/- per semester for all other programs.</p>
                <p><strong>Lab fee for Bachelor of Pharmacy</strong>:  Tk. 3,750/- per semester</p>
                <p><strong>Student Activity Fee: </strong>student activities fee is Tk. 765/- per semester for B.Pharm  and all other departments Tk. 510/- per semester.</p>
                <p>
                    <strong>Document Verification Fee<br />
                    </strong>Students will pay the document verification fee (if applicable) for the verification of their previous academic documents.
                </p>
            </div>

        </div>
    </div>
</asp:Content>

