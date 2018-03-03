<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin-faculty.aspx.cs" Inherits="Admin_admin_faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12">
        <div class="row table-responsive">
            <h1>Faculty Members</h1>
            <asp:GridView ID="gvFaculty" CssClass="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="gvFacultyDataSource">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                    <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                    <asp:BoundField DataField="faculty" HeaderText="faculty" SortExpression="faculty" />
                    <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                    <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                    <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                    <asp:ImageField DataImageUrlField="_image" HeaderText="Image">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="gvFacultyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StudentDBCon %>" DeleteCommand="DELETE FROM [tblFacultyMembers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblFacultyMembers] ([FName], [ContactNo], [EmailId], [faculty], [designation], [Qualification], [Experience], [_image]) VALUES (@FName, @ContactNo, @EmailId, @faculty, @designation, @Qualification, @Experience, @column1)" SelectCommand="SELECT * FROM [tblFacultyMembers]" UpdateCommand="UPDATE [tblFacultyMembers] SET [FName] = @FName, [ContactNo] = @ContactNo, [EmailId] = @EmailId, [faculty] = @faculty, [designation] = @designation, [Qualification] = @Qualification, [Experience] = @Experience, [_image] = @_image WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="faculty" Type="String" />
                <asp:Parameter Name="designation" Type="String" />
                <asp:Parameter Name="Qualification" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="_image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="faculty" Type="String" />
                <asp:Parameter Name="designation" Type="String" />
                <asp:Parameter Name="Qualification" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="_image" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

