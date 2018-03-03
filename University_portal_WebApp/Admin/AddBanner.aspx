<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="AddBanner.aspx.cs" Inherits="Admin_AddBanner" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

    <div class="row">
        <div class="col-lg-6">
            <h1>Edit Banners</h1>
            <div class="notification" runat="server"></div>
            <div role="form">
                <div id="notification" runat="server"></div>
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" class="control-label" AssociatedControlID="txtHeader1"><b>Header Text 1</b></asp:Label>
                    <asp:TextBox type="text" class="form-control" ID="txtHeader1" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" class="control-label" AssociatedControlID="txtHeader2"><b>Header Text 2</b></asp:Label>
                    <asp:TextBox type="text" class="form-control" ID="txtHeader2" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" class="control-label" AssociatedControlID="txtPara"><b>Paragraph</b></asp:Label>
                    <asp:TextBox type="text" class="form-control" ID="txtPara" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" class="control-label" AssociatedControlID="calStartDate"><b>Start Date</b></asp:Label>
                    <div class="col-sm-4 input-group">
                        <asp:CalendarExtender ID="calStartDate" runat="server" TargetControlID="txtStartDate" PopupButtonID="ImageButton1" Format="dd-MM-yy"></asp:CalendarExtender>
                        <asp:TextBox ID="txtStartDate" runat="server" class="form-control"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="\assets\corporate\img\icons\Calendar_scheduleHS.png"
                                CssClass="btn btn-default" Style="padding: 8px;" />
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" class="control-label" AssociatedControlID="calEndDate"><b>End Date</b></asp:Label>
                    <div class="col-sm-4 input-group">
                        <asp:CalendarExtender ID="calEndDate" runat="server" TargetControlID="txtEndDate" PopupButtonID="ImageButton2"></asp:CalendarExtender>
                        <asp:TextBox ID="txtEndDate" runat="server" class="form-control"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="\assets\corporate\img\icons\Calendar_scheduleHS.png"
                                CssClass="btn btn-default" Style="padding: 8px;" />
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <asp:FileUpload ID="uplBannerImage" runat="server" />
                </div>
                <div class="form-group">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio-inline">
                        <asp:ListItem Value="1" Selected="True">Banner 1</asp:ListItem>
                        <asp:ListItem Value="2">Banner2</asp:ListItem>
                        <asp:ListItem Value="3">Banner 3</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" type="submit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>

