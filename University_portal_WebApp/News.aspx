<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Configuration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="container">
            <!-- BEGIN SIDEBAR & CONTENT -->
            <div class="row margin-bottom-40">
                <!-- BEGIN CONTENT -->
                <div class="col-md-12 col-sm-12">
                    <div class="content-page">
                        <h2>News</h2>
                        <%
                            string strPath = WebConfigurationManager.ConnectionStrings["StudentDBCon"].ConnectionString;
                            SqlConnection con = new SqlConnection(strPath); 
                            SqlCommand cmd = new SqlCommand("SELECT * FROM tblNews",con);
                            con.Open();
                            SqlDataReader dr = cmd.ExecuteReader();                    
                        %>
                        <%while(dr.Read()) {%>                        
                  
                                                                 
                            <div class="col-sm-4">
                                <div>
                                    <marquee>
                                    <h2><strong><%=dr["NewsTitle"].ToString() %></strong></h2>
                                    <h4><strong><%=dr["NewsDate"].ToString() %></strong></h4>
                                    <p><strong><%=dr["NewsContent"].ToString() %></strong></p> 
                                    </marquee>                                 
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

