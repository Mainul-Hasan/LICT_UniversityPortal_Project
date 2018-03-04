<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="placement.aspx.cs" Inherits="placement" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Configuration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Alumni</title>
    <link href="assets/pages/css/FacultyMembers.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container text-center">
        <h2>Placed Student</h2>
        <br>
        <%
            string strPath = WebConfigurationManager.ConnectionStrings["StudentDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strPath);
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblPlacement", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();                    
        %>
        <div class="row">
            <%while (dr.Read())
              {%>
            <div class="col-md-4 col-sm-4" style="margin-bottom: 30px;">
                <div class="team-member">
                    <div class="team-img">
                        <img src="<%=dr["_image"].ToString()%>" alt="faculty member" width="100%" height="100%" class="img-responsive">
                    </div>
                    <div class="team-hover">
                        <div class="desk">
                            <p>Designation: <b><%=dr["Designation"].ToString()%></b></p>
                            <p>Salary: <b><%=dr["salary"].ToString()%></b></p>
                            <p><a href="#" class="button btn btn-primary" role="button">Contact!</a></p>
                        </div>
                    </div>
                </div>

                <div class="team-title">
                    <h3>Name : <%=dr["StudentName"].ToString()%></h3>
                    <p>Company : <%=dr["companyName"].ToString()%></p>
                </div>
               
            </div>
            <%}
              con.Close(); %>
        </div>
    </div>
</asp:Content>

