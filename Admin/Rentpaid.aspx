<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Rentpaid.aspx.cs" Inherits="Admin_Rentpaid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .background{
            background-image:url("background1.jpg");
        }
        .auto-style1 {
        text-align: center;
        font-family: "Bookman Old Style";
        font-size: 35px;
    }
    .newStyle1 {
        font-family: "Bookman Old Style";
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper">
            <div id="page-inner">
                <div class="auto-style1">
                    Rent Payment Status</div>
                <div class="background">
    <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Rentpayid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="520px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Rentpayid" HeaderText="Rentpayid" InsertVisible="False" ReadOnly="True" SortExpression="Rentpayid" />
            <asp:BoundField DataField="pro_Id" HeaderText="pro_Id" SortExpression="pro_Id" />
            <asp:BoundField DataField="Rent_amount" HeaderText="Rent_amount" SortExpression="Rent_amount" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT [Rentpayid], [pro_Id], [Rent_amount], [UserId] FROM [PayRent]"></asp:SqlDataSource>
             </center>  </div> </div>
         </div>
</asp:Content>

