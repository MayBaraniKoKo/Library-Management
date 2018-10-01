<%@ Page Title="Book Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookReport.aspx.cs" Inherits="LibraryManagement.BookReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><strong>Borrowed Book</strong></h2>

        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="BorrowDate" HeaderText="BorrowDate" SortExpression="BorrowDate" />
            <asp:TemplateField HeaderText="Remaining Days">
                <ItemTemplate>
                    <asp:Label ID="rDays" runat="server" Text=""></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibaryManagementConnectionString %>" SelectCommand="SELECT [StudentID], [StudentName], [BookName], [Author], [BorrowDate] FROM [BorrowBook] WHERE (([ReturnDate] = @ReturnDate) AND ([Email] = @Email))">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="ReturnDate" Type="String" />
            <asp:SessionParameter Name="Email" SessionField="UserName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
