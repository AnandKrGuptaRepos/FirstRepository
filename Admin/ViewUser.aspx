<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewUser.aspx.cs" Inherits="ViewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .background{
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
                <div class="auto-style1">
                    view User Profiles
                </div>
                <div class="background">
   <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Prof_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="977px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Prof_id" HeaderText="Prof_id" InsertVisible="False" ReadOnly="True" SortExpression="Prof_id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Aadhar_no" HeaderText="Aadhar_no" SortExpression="Aadhar_no" />
        </Columns>
                <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" DeleteCommand="DELETE FROM [User_Profile] WHERE [Prof_id] = @Prof_id" InsertCommand="INSERT INTO [User_Profile] ([Name], [User_Name], [Gender], [Phone], [Address], [Email], [Age], [Aadhar_no]) VALUES (@Name, @User_Name, @Gender, @Phone, @Address, @Email, @Age, @Aadhar_no)" SelectCommand="SELECT [Prof_id], [Name], [User_Name], [Gender], [Phone], [Address], [Email], [Age], [Aadhar_no] FROM [User_Profile]" UpdateCommand="UPDATE [User_Profile] SET [Name] = @Name, [User_Name] = @User_Name, [Gender] = @Gender, [Phone] = @Phone, [Address] = @Address, [Email] = @Email, [Age] = @Age, [Aadhar_no] = @Aadhar_no WHERE [Prof_id] = @Prof_id">
                    <DeleteParameters>
                        <asp:Parameter Name="Prof_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Phone" Type="Int64" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Aadhar_no" Type="Int64" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="User_Name" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Phone" Type="Int64" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Aadhar_no" Type="Int64" />
                        <asp:Parameter Name="Prof_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource></center>
                    </div>
                </div>
          </div>
      
</asp:Content>

