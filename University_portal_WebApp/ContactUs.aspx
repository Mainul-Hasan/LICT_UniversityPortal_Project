<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">

        <div class="row">

            <div class="col-lg-8 col-lg-offset-2">

                <h1>Contact Us</h1>
                <!-- We're going to place the form here in the next step -->
                <div id="notification" runat="server"></div>

                <div class="controls">

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">                                
                                <asp:Label ID="lblfname" AssociatedControlID="txtFirstName" runat="server" CssClass="control-label" Text="Firstname *"></asp:Label>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" placeholder="Please enter your firstname" required="required" data-error="Firstname is required."></asp:TextBox>

                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">                                
                                <asp:Label ID="Label1" AssociatedControlID="txtLastName" runat="server" Text="Lastname *"></asp:Label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" placeholder="Please enter your lastname *" required="required" data-error="Lastname is required."></asp:TextBox>

                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">                               
                                <asp:Label ID="lblEmail" AssociatedControlID="txtEmail" runat="server" Text="Email *"></asp:Label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Please enter your email *" required="required" data-error="Valid email is required."></asp:TextBox>

                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">                               
                                <asp:Label ID="lblPhone" AssociatedControlID="txtPhone" runat="server" Text="Phone"></asp:Label>
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Please enter your phone"></asp:TextBox>

                                <div class="help-block with-errors"></div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">                                
                                <asp:Label ID="lblSubject" AssociatedControlID="txtSubject" runat="server" Text="Subject"></asp:Label>
                                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Please enter your Subject"></asp:TextBox>

                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">                               
                                <asp:Label ID="lblMessage" AssociatedControlID="txtMessage" runat="server" Text="Message" CssClass="control-label"></asp:Label>
                                <asp:TextBox ID="txtMessage" runat="server" class="form-control" placeholder="Please,leave us a message" Rows="4" required="required" data-error="Please,leave us a message." TextMode="MultiLine"></asp:TextBox>

                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Send message" OnClick="btnSubmit_Click" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <p class="text-muted"><strong>*</strong> These fields are required.</p>
                            <br/>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.8 -->
        </div>
        <!-- /.row-->
    </div>
    <!-- /.container-->
</asp:Content>

