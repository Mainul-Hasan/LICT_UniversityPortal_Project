<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Configuration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>News</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="container">
            <!-- BEGIN SIDEBAR & CONTENT -->
            <div class="row margin-bottom-40">
                <!-- BEGIN CONTENT -->
                <div class="col-md-12 col-sm-12">
                    <div class="content-page">
                        <h2 class="margin-bottom-40">News</h2>
                        <%
                            string strPath = WebConfigurationManager.ConnectionStrings["StudentDBCon"].ConnectionString;
                            SqlConnection con = new SqlConnection(strPath);
                            SqlCommand cmd = new SqlCommand("SELECT * FROM tblNews", con);
                            con.Open();
                            SqlDataReader dr = cmd.ExecuteReader();                    
                        %>
                        <%while (dr.Read())
                          {%>


                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="new-list-content-unit">

                                <div class="news-list-meta-unit">
                                    <div class="date"><%=dr["NewsDate"].ToString() %></div>
                                </div>

                                <div class="news-list-item-title">
                                    <%=dr["NewsTitle"].ToString() %>
                                </div>
                                <hr />
                                <div class="marquee">
                                    <p class="text-justify"><%=dr["NewsContent"].ToString() %></p>
                                </div>
                            </div>
                        </div>
                        <%}
                          con.Close(); %>
                    </div>
                </div>
                <!-- END CONTENT -->
            </div>
            <!-- END SIDEBAR & CONTENT -->
        </div>
    </div>
</asp:Content>

