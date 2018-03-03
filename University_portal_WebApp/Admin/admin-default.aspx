<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin-default.aspx.cs" Inherits="Admin.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="panel panel-black">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-user"></i> Total students registered</h3>
                    </div>
                    <div class="panel-body">
                        <div id="morris-donut-chart"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

