<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewFeedBack.aspx.cs" Inherits="Admin_ViewFeedBack" %>

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
                    View Feedbacks
                </div>
                <div class="background">
                    <br/>
                    <br/>
                    <br/>
                <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Feed_Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="551px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="Feed_Id" HeaderText="Feed_Id" InsertVisible="False" ReadOnly="True" SortExpression="Feed_Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" DeleteCommand="DELETE FROM [Feedback] WHERE [Feed_Id] = @Feed_Id" InsertCommand="INSERT INTO [Feedback] ([Name], [Email], [Feedback]) VALUES (@Name, @Email, @Feedback)" SelectCommand="SELECT [Feed_Id], [Name], [Email], [Feedback] FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [Name] = @Name, [Email] = @Email, [Feedback] = @Feedback WHERE [Feed_Id] = @Feed_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Feed_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Feedback" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Feedback" Type="String" />
                        <asp:Parameter Name="Feed_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource></center>
                    <br/>
                    <br/>
                    <br/>
                </div>
         </div>
    </div>
</asp:Content>

