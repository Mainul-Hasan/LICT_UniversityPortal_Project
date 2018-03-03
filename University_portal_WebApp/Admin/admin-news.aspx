<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="admin-news.aspx.cs" Inherits="Admin_admin_news" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class="col-lg-12">
        <h1>News</h1>
        <div class="row table-responsive">
            <asp:DetailsView ID="DetailsView1" CssClass="table table-striped table-bordered" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:TemplateField HeaderText="NewsTitle" SortExpression="NewsTitle">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("NewsTitle") %>' Width="500px"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("NewsTitle") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("NewsTitle") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NewsDate" SortExpression="NewsDate">
                        <EditItemTemplate>
                            <div class="col-md-4 input-group">
                                <asp:CalendarExtender ID="calNewsDate" runat="server" TargetControlID="txtNewsDate" PopupButtonID="ImageButtonNews" Format="dd-MM-yy"></asp:CalendarExtender>
                                <asp:TextBox ID="txtNewsDate" CssClass="form-control" runat="server" Text='<%# Bind("NewsDate") %>'></asp:TextBox>
                                <span class="input-group-btn">
                                    <asp:ImageButton ID="ImageButtonNews" runat="server" ImageUrl="\assets\corporate\img\icons\Calendar_scheduleHS.png"
                                                     CssClass="btn btn-default" Style="padding: 8px;" />
                                </span>
                            </div> 
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="col-md-4 input-group">
                                <asp:CalendarExtender ID="calNewsDate" runat="server" TargetControlID="txtNewsDateInsert" PopupButtonID="ImageButtonNewsInsert" Format="dd-MM-yy"></asp:CalendarExtender>
                                <asp:TextBox ID="txtNewsDateInsert" CssClass="form-control" runat="server" Text='<%# Bind("NewsDate") %>'></asp:TextBox>
                                <span class="input-group-btn">
                                    <asp:ImageButton ID="ImageButtonNewsInsert" runat="server" ImageUrl="\assets\corporate\img\icons\Calendar_scheduleHS.png"
                                                     CssClass="btn btn-default" Style="padding: 8px;" />
                                </span>
                            </div> 
                            
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("NewsDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NewsContent" SortExpression="NewsContent">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="MultiLine" Text='<%# Bind("NewsContent") %>' Width="500px" Height="250px"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="MultiLine" Text='<%# Bind("NewsContent") %>' Width="500px" Height="250px"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("NewsContent") %>' Width="500px" Height="250px"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
        </div>
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
    </div>
</asp:Content>

