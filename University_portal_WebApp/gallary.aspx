<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="gallary" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Configuration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/pages/css/FacultyMembers.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container text-center">
        <h2>Faculty Members</h2>
        <br>
        <%
            string strPath = WebConfigurationManager.ConnectionStrings["StudentDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strPath);
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblFacultyMembers", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();                    
        %>
        <div class="row">
            <%while (dr.Read())
              {%>
            <div class="col-md-4 col-sm-4">
                <div class="team-member">
                    <div class="team-img">
                        <img src="<%=dr["_image"].ToString() %>" alt="faculty member" width="100%" height="100%" class="img-responsive">
                    </div>
                    <div class="team-hover">
                        <div class="desk">
                            <h3>Faculty of <%=dr["faculty"].ToString() %></h3>
                            <p>Email: <%=dr["EmailId"].ToString() %></p>
                            <p>Phone: <%=dr["ContactNo"].ToString() %></p>
                            <p><a href="ContactUs.aspx" class="button btn btn-primary" role="button">Contact</a></p>
                        </div>
                    </div>
                </div>
                <div class="team-title">
                    <h5><%=dr["FName"].ToString() %></h5>
                    <span><%=dr["designation"].ToString() %></span>
                    <p><%=dr["Qualification"].ToString() %></p>
                </div>
            </div>
            <%}
              con.Close(); %>
        </div>
    </div>
</asp:Content>

