<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="editplacedstudents.aspx.cs" Inherits="Admin_editplacedstudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12">
        <div class=" row table-responsive">
            <h1>Edit Placed Students</h1>
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="StudentId" HeaderText="StudentId" InsertVisible="False" ReadOnly="True" SortExpression="StudentId" />
                    <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                    <asp:BoundField DataField="companyName" HeaderText="companyName" SortExpression="companyName" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                    <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                    <asp:ImageField DataImageUrlField="_image" HeaderText="Image">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentDBCon %>" DeleteCommand="DELETE FROM [tblPlacement] WHERE [StudentId] = @StudentId" InsertCommand="INSERT INTO [tblPlacement] ([StudentName], [companyName], [Designation], [salary], [_image]) VALUES (@StudentName, @companyName, @Designation, @salary, @_image)" SelectCommand="SELECT * FROM [tblPlacement]" UpdateCommand="UPDATE [tblPlacement] SET [StudentName] = @StudentName, [companyName] = @companyName, [Designation] = @Designation, [salary] = @salary, [_image] = @_image WHERE [StudentId] = @StudentId">
            <DeleteParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="companyName" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="salary" Type="String" />
                <asp:Parameter Name="_image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="companyName" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="salary" Type="String" />
                <asp:Parameter Name="_image" Type="String" />
                <asp:Parameter Name="StudentId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

