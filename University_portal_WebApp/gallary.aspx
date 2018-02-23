<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="gallary" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Web.Configuration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid text-center">
        <h2>Faculty Members</h2>
        <br>
        <%
            string strPath = WebConfigurationManager.ConnectionStrings["StudentDBCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strPath); 
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblFacultyMembers",con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();                    
        %>
        <div class="row text-center">
            <%while(dr.Read()) {%>                        
                  
                                                                 
            <div class="col-sm-4">
                <div class="img-thumbnail">
                    <img src="<%=dr["_image"].ToString() %>" alt="Paris" width="300" height="300">
                    <p><strong><%=dr["FName"].ToString() %></strong></p>
                    <p><strong><%=dr["designation"].ToString() %></strong></p>
                    <p><strong><%=dr["Qualification"].ToString() %></strong></p>
                    <p><strong><%=dr["EmailId"].ToString() %></strong></p>
                    <p><strong><%=dr["ContactNo"].ToString() %></strong></p>
                    <p><%=dr["faculty"].ToString() %></p>
                </div>
            </div>
            <%}
              con.Close(); %>
        </div>
    </div>

</asp:Content>

