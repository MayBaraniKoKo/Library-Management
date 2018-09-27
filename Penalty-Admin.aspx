<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Penalty-Admin.aspx.cs" Inherits="LibraryManagement.Penalty_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Penalty Report</h2>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="BorrowBookID" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="BorrowBookID" HeaderText="BorrowBookID" InsertVisible="False" ReadOnly="True" SortExpression="BorrowBookID" />
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
            <asp:BoundField DataField="BorrowDate" HeaderText="BorrowDate" SortExpression="BorrowDate" />
            <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" SortExpression="ReturnDate" />
            <asp:BoundField DataField="Fine" HeaderText="Fine" SortExpression="Fine" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibaryManagementConnectionString %>" SelectCommand="SELECT [BorrowBookID], [StudentID], [StudentName], [BookName], [BorrowDate], [ReturnDate], [Fine] FROM [BorrowBook] WHERE ([Fine] &gt; @Fine)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="Fine" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
