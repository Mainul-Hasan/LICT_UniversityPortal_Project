<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin-news.aspx.cs" Inherits="Admin_admin_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="None">
        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="NewsTitle" HeaderText="NewsTitle" SortExpression="NewsTitle" />
            <asp:BoundField DataField="NewsDate" HeaderText="NewsDate" SortExpression="NewsDate" />
            <asp:BoundField DataField="NewsContent" HeaderText="NewsContent" SortExpression="NewsContent" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentDBCon %>" DeleteCommand="DELETE FROM [tblNews] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblNews] ([NewsTitle], [NewsDate], [NewsContent]) VALUES (@NewsTitle, @NewsDate, @NewsContent)" SelectCommand="SELECT * FROM [tblNews]" UpdateCommand="UPDATE [tblNews] SET [NewsTitle] = @NewsTitle, [NewsDate] = @NewsDate, [NewsContent] = @NewsContent WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NewsTitle" Type="String" />
            <asp:Parameter Name="NewsDate" Type="String" />
            <asp:Parameter Name="NewsContent" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NewsTitle" Type="String" />
            <asp:Parameter Name="NewsDate" Type="String" />
            <asp:Parameter Name="NewsContent" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    

</asp:Content>

