<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewContact.aspx.cs" Inherits="Admin_ViewContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .auto-style1 {
            font-family: "Bookman Old Style";
            font-size: 35px;
            text-align: center;
            
        }
        .backgound
        {
            background-image: url("background1.jpg");
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper">
            <div id="page-inner">
               
                <div class="auto-style1">Contacts Details</div>
                 <div class="backgound">

                    <br/><center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cont_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="543px">
                         <AlternatingRowStyle BackColor="White" />
                         <Columns>
                             <asp:BoundField DataField="Cont_id" HeaderText="Cont_id" InsertVisible="False" ReadOnly="True" SortExpression="Cont_id" />
                             <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                             <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                             <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
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
                     </asp:GridView></center>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" SelectCommand="SELECT [Cont_id], [Name], [Email], [Contact] FROM [Contact]"></asp:SqlDataSource><br/>

                     </div>
                </div>
         </div>
</asp:Content>

