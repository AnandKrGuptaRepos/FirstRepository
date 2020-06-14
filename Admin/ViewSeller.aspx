<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewSeller.aspx.cs" Inherits="Admin_ViewSeller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .background{
            background-image: url("background1.jpg");
        }
        .auto-style1 {
            margin-top: 0px;
        }
        .newStyle1 {
        font-family: "Bookman Old Style";
    }
    .auto-style2 {
        font-family: "Bookman Old Style";
        font-size: 35px;
        text-align: center;
    }
        .newStyle2 {
            font-family: "Bookman Old Style";
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="page-wrapper">
            <div id="page-inner">
                <div class="auto-style2">
                    View Seller Profile
                </div>
                <div class="background">
                    <br>
                    <br>
                    <br>
               <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Sell_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="203px" Width="999px" CssClass="auto-style1">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                            <asp:BoundField DataField="Sell_id" HeaderText="Sell_id" InsertVisible="False" ReadOnly="True" SortExpression="Sell_id" />
                            <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" DeleteCommand="DELETE FROM [Seller_Profile] WHERE [Sell_id] = @Sell_id" InsertCommand="INSERT INTO [Seller_Profile] ([Admin_id], [Name], [User_Name], [Email], [Phone], [Age], [Password], [Image]) VALUES (@Admin_id, @Name, @User_Name, @Email, @Phone, @Age, @Password, @Image)" SelectCommand="SELECT * FROM [Seller_Profile]" UpdateCommand="UPDATE [Seller_Profile] SET [Admin_id] = @Admin_id, [Name] = @Name, [User_Name] = @User_Name, [Email] = @Email, [Phone] = @Phone, [Age] = @Age, [Password] = @Password, [Image] = @Image WHERE [Sell_id] = @Sell_id">
                        <DeleteParameters>
                            <asp:Parameter Name="Sell_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Admin_id" Type="Int32" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="User_Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Phone" Type="Int64" />
                            <asp:Parameter Name="Age" Type="Int32" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Admin_id" Type="Int32" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="User_Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Phone" Type="Int64" />
                            <asp:Parameter Name="Age" Type="Int32" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="Image" Type="String" />
                            <asp:Parameter Name="Sell_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource></center>
                    <br>
                    <br>
                    <br>
                </div>
                <div class="auto-style2">Seller Login Table</div>
                <div class="background">

                   <br/><center> <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="u_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="385px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="u_id" HeaderText="u_id" InsertVisible="False" ReadOnly="True" SortExpression="u_id" />
                            <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                            <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" DeleteCommand="DELETE FROM [sellerLogin] WHERE [u_id] = @u_id" InsertCommand="INSERT INTO [sellerLogin] ([User_Name], [Role]) VALUES (@User_Name, @Role)" SelectCommand="SELECT [u_id], [User_Name], [Role] FROM [sellerLogin]" UpdateCommand="UPDATE [sellerLogin] SET [User_Name] = @User_Name, [Role] = @Role WHERE [u_id] = @u_id">
                        <DeleteParameters>
                            <asp:Parameter Name="u_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="User_Name" Type="String" />
                            <asp:Parameter Name="Role" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="User_Name" Type="String" />
                            <asp:Parameter Name="Role" Type="Int32" />
                            <asp:Parameter Name="u_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource></center></br>

                    </div>
          </div>
    </div>
</asp:Content>

