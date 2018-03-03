<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="graduate-tuition-fees.aspx.cs" Inherits="graduate_tution_fees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Tuition Fess | Graduate Programs</title>
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
                <h3 style="text-align: center;"><span style="text-decoration: underline;"><strong>Tuition Fee: Per Credit<br />
                </strong></span></h3>
                <h3 style="text-align: left;"><span style="text-decoration: underline;"><strong>Graduate Programs:</strong></span><strong>  </strong></h3>
                <table class="table" style="height: 504px;" border="2" width="957">
                    <tbody>
                        <tr>
                            <td style="text-align: center;" width="127"><strong>Name of Faculties</strong></td>
                            <td style="text-align: center;" width="213"><strong>Name of Programs</strong></td>
                            <td style="text-align: center;" width="243"><strong>Approved Tuition&#8217;s Fees per Credit with effect from Fall Semester 2015</strong></td>
                        </tr>
                        <tr>
                            <td rowspan="4" width="127">Business and Economics</td>
                            <td width="213">MBA</td>
                            <td style="text-align: center;" width="243">5,100/= (Upto Summer 2018)</td>
                        </tr>
                        <tr>
                            <td width="213">EMBA</td>
                            <td style="text-align: center;" width="243">5,100/= (Upto Summer 2018)</td>
                        </tr>
                        <tr>
                            <td width="213">MDS</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td width="213">MSS in Economics</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td rowspan="5" width="127">Liberal Arts and Social Sciences</td>
                            <td width="213">MA in English</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td width="213">MA in ELT</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td width="213">LL.M (1 Year)</td>
                            <td style="text-align: center;" width="243">3,500/= (Effective from Summer 2016)</td>
                        </tr>
                        <tr>
                            <td width="213">MPRHGD</td>
                            <td style="text-align: center;" width="243">2,500/=</td>
                        </tr>
                        <tr>
                            <td width="213">PPDM</td>
                            <td style="text-align: center;" width="243">2,500/=</td>
                        </tr>
                        <tr>
                            <td rowspan="5" width="127">Science and Engineering</td>
                            <td width="213">MS in Applied Statistics</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td width="213">MS in TE</td>
                            <td style="text-align: center;" width="243">4,500/=</td>
                        </tr>
                        <tr>
                            <td width="213">MS in APE</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                        <tr>
                            <td width="213">M. Pharm.</td>
                            <td style="text-align: center;" width="243">5,500/= (Effective from Spring 2016)</td>
                        </tr>
                        <tr>
                            <td width="213">MS in Actuarial Science</td>
                            <td style="text-align: center;" width="243">3,500/=</td>
                        </tr>
                    </tbody>
                </table>
                <h3 style="text-align: center;"><span style="text-decoration: underline;"><strong>Tuition Fee: Details</strong></span></h3>
                <h3 style="text-align: left;"><strong><span style="text-decoration: underline;">Graduate Programs:</span></strong></h3>
                <table class="table" style="height: 756px;" border="2" width="1050">
                    <tbody>
                        <tr>
                            <td style="text-align: center;" width="90"><strong>Name of Faculties</strong></td>
                            <td style="text-align: center;" width="102"><strong>Name of Programs</strong></td>
                            <td width="58"><strong>Credits</strong></td>
                            <td style="text-align: center;" width="104"><strong>Tuition Fees</strong></td>
                            <td width="94">
                                <p style="text-align: center;"><strong>Lab &amp; Activities Fees</strong></p>
                            </td>
                            <td style="text-align: center;" width="81"><strong>Admission Fee</strong></td>
                            <td style="text-align: center;" width="113"><strong>Grand Total</strong></td>
                        </tr>
                        <tr>
                            <td rowspan="4" width="90">Business and Economics</td>
                            <td width="102">MBA</td>
                            <td style="text-align: center;" width="58">60</td>
                            <td style="text-align: center;" width="104">3,06,000/=</td>
                            <td style="text-align: center;" width="94">12,060/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">3,33,060/=</td>
                        </tr>
                        <tr>
                            <td width="102">EMBA</td>
                            <td style="text-align: center;" width="58">42</td>
                            <td style="text-align: center;" width="104">2,14,200/=</td>
                            <td style="text-align: center;" width="94">12,060/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">2,41,260/=</td>
                        </tr>
                        <tr>
                            <td width="102">MDS</td>
                            <td style="text-align: center;" width="58">39</td>
                            <td style="text-align: center;" width="104">1,36,500/=</td>
                            <td style="text-align: center;" width="94">4,530/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,56,030/=</td>
                        </tr>
                        <tr>
                            <td width="102">MSS in Economics</td>
                            <td style="text-align: center;" width="58">36</td>
                            <td style="text-align: center;" width="104">1,26,000/=</td>
                            <td style="text-align: center;" width="94">4,530/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,45,530/=</td>
                        </tr>
                        <tr>
                            <td rowspan="8" width="90">Liberal Arts and Social Sciences</td>
                            <td width="102">MA in English</td>
                            <td style="text-align: center;" width="58">36</td>
                            <td style="text-align: center;" width="104">1,26,000/=</td>
                            <td style="text-align: center;" width="94">4,530/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,45,530/=</td>
                        </tr>
                        <tr>
                            <td width="102">MA in English</td>
                            <td style="text-align: center;" width="58">45</td>
                            <td style="text-align: center;" width="104">1,57,500/=</td>
                            <td style="text-align: center;" width="94">6,040/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,78,540/=</td>
                        </tr>
                        <tr>
                            <td width="102">MA in ELT</td>
                            <td style="text-align: center;" width="58">42</td>
                            <td style="text-align: center;" width="104">1,47,000/=</td>
                            <td style="text-align: center;" width="94">6,040/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,68,040/=</td>
                        </tr>
                        <tr>
                            <td width="102">MA in ELT</td>
                            <td style="text-align: center;" width="58">48</td>
                            <td style="text-align: center;" width="104">1,68,000/=</td>
                            <td style="text-align: center;" width="94">7,550/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,90,550/=</td>
                        </tr>
                        <tr>
                            <td width="102">MA in ELT</td>
                            <td style="text-align: center;" width="58">66</td>
                            <td style="text-align: center;" width="104">2,31,000/=</td>
                            <td style="text-align: center;" width="94">9,060/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">2,55,060/=</td>
                        </tr>
                        <tr>
                            <td width="102">LL.M</td>
                            <td style="text-align: center;" width="58">36</td>
                            <td style="text-align: center;" width="104">1,26,000/=</td>
                            <td style="text-align: center;" width="94">6,030/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,47,030/=</td>
                        </tr>
                        <tr>
                            <td width="102">MPRHGD</td>
                            <td style="text-align: center;" width="58">48</td>
                            <td style="text-align: center;" width="104">1,20,000/=</td>
                            <td style="text-align: center;" width="94">9,060/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,44,060/=</td>
                        </tr>
                        <tr>
                            <td width="102">PPDM</td>
                            <td style="text-align: center;" width="58">21</td>
                            <td style="text-align: center;" width="104">52,500/=</td>
                            <td style="text-align: center;" width="94">3,020/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">70,520/=</td>
                        </tr>
                        <tr>
                            <td rowspan="5" width="90">Science and Engineering</td>
                            <td width="102">MS in Applied Statistics</td>
                            <td style="text-align: center;" width="58">35</td>
                            <td style="text-align: center;" width="104">1,22,500/=</td>
                            <td style="text-align: center;" width="94">6,030/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,43,530/=</td>
                        </tr>
                        <tr>
                            <td width="102">MS in TE</td>
                            <td style="text-align: center;" width="58">35</td>
                            <td style="text-align: center;" width="104">1,57,500/=</td>
                            <td style="text-align: center;" width="94">6,030/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,78,530/=</td>
                        </tr>
                        <tr>
                            <td width="102">MS in APE</td>
                            <td style="text-align: center;" width="58">35</td>
                            <td style="text-align: center;" width="104">1,22,500/=</td>
                            <td style="text-align: center;" width="94">6,030/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,43,530/=</td>
                        </tr>
                        <tr>
                            <td width="102">M. Pharm.</td>
                            <td style="text-align: center;" width="58">30</td>
                            <td style="text-align: center;" width="104">1,65,000/=</td>
                            <td style="text-align: center;" width="94">9,045/=</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,89,045/=</td>
                        </tr>
                        <tr>
                            <td width="102">MS in Actuarial Science</td>
                            <td style="text-align: center;" width="58">36</td>
                            <td style="text-align: center;" width="104">1,26,000/=</td>
                            <td style="text-align: center;" width="94">4,530/= (Lab)<br />
                                1,500/= (Library)</td>
                            <td style="text-align: center;" width="81">15,000/=</td>
                            <td style="text-align: center;" width="113">1,47,030/=</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
