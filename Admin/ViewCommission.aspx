<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewCommission.aspx.cs" Inherits="Admin_ViewCommission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: 35px;
            text-align: center;
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
             <span class="newStyle1">View Commission
             <br />
             </span>
             </div>
       <center>  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Comm_id" DataSourceID="SqlDataSource1" Width="412px">
             <Columns>
                 <asp:BoundField DataField="Comm_id" HeaderText="Comm_id" ReadOnly="True" SortExpression="Comm_id" InsertVisible="False" />
                 <asp:BoundField DataField="Prop_id" HeaderText="Prop_id" SortExpression="Prop_id" />
                 <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                 <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
             </Columns>
             <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
             <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
             <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
             <RowStyle BackColor="White" ForeColor="#330099" />
             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
             <SortedAscendingCellStyle BackColor="#FEFCEB" />
             <SortedAscendingHeaderStyle BackColor="#AF0101" />
             <SortedDescendingCellStyle BackColor="#F6F0C0" />
             <SortedDescendingHeaderStyle BackColor="#7E0000" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT * FROM [Commission_info]"></asp:SqlDataSource>
         </div>
         </div> </center>
</asp:Content>

