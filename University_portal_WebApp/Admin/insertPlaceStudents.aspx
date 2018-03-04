<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="insertPlaceStudents.aspx.cs" Inherits="Admin_insertPlaceStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="row">
                    <div class="col-lg-6">
                        <h1>Insert Placed Students</h1>
                        <div role="form">
                            <div id="notification" runat="server"></div>
                            <div class="form-group">
                                <label class="control-label" for="inputSuccess">Student Name</label>
                                
                                 <asp:TextBox type="text" class="form-control" ID="txtName" required="" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="inputWarning">Company Name</label>
                                <asp:TextBox type="text" class="form-control" ID="txtcompany" required="" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="inputError">Designation</label>
                                <asp:TextBox type="text" class="form-control" ID="txtDesig" required="" runat="server"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label class="control-label" for="inputError">Salary</label>
                                <asp:TextBox type="text" class="form-control" ID="txtsal" required="" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                              <asp:FileUpload ID="uplImage" runat="server" required=""/>
                            </div>
                              <div class="form-group">
                               <asp:Button ID="Button1" type="submit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="create_account_Button_Click" />
                            </div>

                        </div>

                        

                    </div>
                </div>
                <!-- /.row -->
</asp:Content>

