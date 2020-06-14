<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="~/Admin/ViewBookedProperty.aspx.cs" Inherits="ViewBookedProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .back{
            background-image: url("background1.jpg");
        }
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .auto-style1 {
            font-family: "Bookman Old Style";
            font-size: 35px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper">
            <div id="page-inner">
                <div class="auto-style1">View Seller</div>
                <div class="back">

                   <br/><center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Book_Pay_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="457px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Book_Pay_id" HeaderText="Book_Pay_id" InsertVisible="False" ReadOnly="True" SortExpression="Book_Pay_id" />
                            <asp:BoundField DataField="Prop_id" HeaderText="Prop_id" SortExpression="Prop_id" />
                            <asp:BoundField DataField="Book_amount" HeaderText="Book_amount" SortExpression="Book_amount" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT [Book_Pay_id], [Prop_id], [Book_amount], [UserId] FROM [BookingPayment]"></asp:SqlDataSource></center>

                    </div>
                </div>
         </div>
</asp:Content>

