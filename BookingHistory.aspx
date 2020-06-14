<%@ Page Title="Booking Details" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="BookingHistory.aspx.cs" Inherits="BookingHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .auto-style6 {
            font-family: "Bookman Old Style";
            font-size: 35px;
            text-decoration: underline;
        }
        .auto-style7 {
            font-family: "Bookman Old Style";
            font-size: 35px;
            text-decoration: underline;
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style7">
        Your Rent Payment History</p>
    <p class="auto-style7">
        &nbsp;</p>
    <p class="auto-style6">
        <div class="auto-style8">
           <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Rentpayid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="476px">
                <Columns>
                    <asp:BoundField DataField="Rentpayid" HeaderText="Rentpayid" InsertVisible="False" ReadOnly="True" SortExpression="Rentpayid" />
                    <asp:BoundField DataField="pro_Id" HeaderText="pro_Id" SortExpression="pro_Id" />
                    <asp:BoundField DataField="Rent_amount" HeaderText="Rent_amount" SortExpression="Rent_amount" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView></center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT [Rentpayid], [pro_Id], [Rent_amount] FROM [PayRent]"></asp:SqlDataSource>
    </p>
    <p class="auto-style7">
        Your Booking Payment History</p>
    <p class="auto-style7">
        &nbsp;</p>
    <p class="auto-style7">
        <center><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Book_Pay_id" DataSourceID="SqlDataSource2" Width="617px">
            <Columns>
                <asp:BoundField DataField="Book_Pay_id" HeaderText="Book_Pay_id" InsertVisible="False" ReadOnly="True" SortExpression="Book_Pay_id" />
                <asp:BoundField DataField="Prop_id" HeaderText="Prop_id" SortExpression="Prop_id" />
                <asp:BoundField DataField="Book_amount" HeaderText="Book_amount" SortExpression="Book_amount" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView></center>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT [Book_Pay_id], [Prop_id], [Book_amount], [UserId] FROM [BookingPayment]"></asp:SqlDataSource>
    </p>
    <p class="auto-style7">
        &nbsp;</p>
</asp:Content>

