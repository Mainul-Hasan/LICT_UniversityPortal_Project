<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="insert_course.aspx.cs" Inherits="Admin_insert_course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-7">
            <h1>Insert CSE Course</h1>
            <div id="notification" runat="server"></div>
            <div role="form">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="control-label" AssociatedControlID="txtCourseNumber">Course Number</asp:Label>
                            <asp:TextBox type="text" class="form-control" ID="txtCourseNumber" required="" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="control-label" AssociatedControlID="txtCourseTitle">Course Title</asp:Label>
                            <asp:TextBox type="text" class="form-control" ID="txtCourseTitle" required="" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="control-label" AssociatedControlID="txtCreditHoursTheory">Credit Hours (Theory)</asp:Label>
                            <asp:TextBox type="text" class="form-control" ID="txtCreditHoursTheory" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="control-label" AssociatedControlID="txtContactHoursTheory">Contact Hours (Theory)</asp:Label>
                            <asp:TextBox type="text" class="form-control" ID="txtContactHoursTheory" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="control-label" AssociatedControlID="txtCreditHoursPractical">Credit Hours (Practical)</asp:Label>
                            <asp:TextBox type="text" class="form-control" ID="txtCreditHoursPractical" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" CssClass="control-label" AssociatedControlID="txtContactHoursPractical">Contact Hours (Practical)</asp:Label>
                            <asp:TextBox type="text" class="form-control" ID="txtContactHoursPractical" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" CssClass="control-label" AssociatedControlID="txtPrerequsiteCourse">Prerequisite Course</asp:Label>
                    <asp:TextBox type="text" class="form-control" ID="txtPrerequsiteCourse" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" type="submit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>

