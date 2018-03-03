<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <fieldset class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title"><span><%# Eval("fname") + " " + Eval("lname") %></span> Profile</h4>
                    </div>
                    <div class="form-horizontal panel-body">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="row">
                                    <div class="col-md-4">
                                        <img src="<%# Eval("Image")%>" width="236px" height="236px" alt="profile image" />
                                    </div>
                                    <div class="col-md-8">
                                        <h5>Full Name: <span><%# Eval("fname") + " " + Eval("lname") %></span></h5>
                                        <h5>Address: <span><%# Eval("Address") %></span></h5>
                                        <h5>Phone: <span><%# Eval("Phone") %></span></h5>
                                        <h5>Email: <span><%# Eval("email") %></span></h5>
                                        <h5>Gender: <span><%# Eval("Gender") %></span></h5>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <h5 style="padding-top: 18px !important;">Career Objective:</h5>
                                    </div>
                                    <div class="col-md-9">
                                        <br />
                                        <p><%# Eval("CareerObjective") %></p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <h5 style="padding-top: 18px !important;">Skills:</h5>
                                    </div>
                                    <div class="col-md-9">
                                        <br />
                                        <p><%# Eval("Skills") %></p>
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>

