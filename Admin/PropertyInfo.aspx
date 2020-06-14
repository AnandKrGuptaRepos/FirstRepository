<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="PropertyInfo.aspx.cs" Inherits="Admin_PropertyInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      
        
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .background {
            background-image: url("/images/background.jpg");
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-family: "Bookman Old Style";
            font-size: 35px;
            text-decoration: underline;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .txtstyle2{
             border-radius:5px;
            background-color:rgba(255,255,255,0.7);
        }
        .txtstyle3{
            border-radius:5px;
            background-color:forestgreen;
        }
        .auto-style4 {
            color: #87A310;
        }
        .auto-style5 {
            color: #FFFFFF;
            font-size: medium;
        }
        .auto-style6 {
            color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
     
     <div id="page-wrapper">
     <div id="page-inner">
         <div class="background">
    <hr />
         <strong>
             <div class="text-left">
             <asp:Panel ID="Panel1" runat="server" BorderColor="#333333" BorderStyle="Solid" BorderWidth="5px" Height="1040px" Width="755px">
                
                 <div class="auto-style1">
                     <span class="auto-style2"><span class="auto-style4">Property</span> <span class="auto-style6">Information</span></span><strong><br class="auto-style3" /> </strong>&nbsp;<br />
                 </div>
                 </strong>
                 <table style="background-color: #3378;">
                     <tr>
                         <td class="auto-style5">Enter Property Name </td>
                         <strong>
                         <td>
                             <asp:TextBox ID="txtPropertyName" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                         </td>
                         <caption>
                             <br/>
                         </caption>
                         </strong>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter the Address</td>
                         <td>
                             <asp:TextBox ID="txtPropAddress" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                             <br />
                         </td>
                         <caption>
                             <br/>
                         </caption>
                     </tr>
                    
                     <tr>
                         <td class="auto-style5">Enter Number of BHK</td>
                         <td>
                             <asp:TextBox ID="txtPropBHK" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter Number of Floor</td>
                         <td>
                             <asp:TextBox ID="txtPropFloor" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter Number of Washroom</td>
                         <td>
                             <asp:TextBox ID="txtPropWashroom" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter Number of Bedrooms</td>
                         <td>
                             <asp:TextBox ID="PropBedroom" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter Number Of Hall</td>
                         <td>
                             <asp:TextBox ID="txtPropHall" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter Number Of Kitchen</td>
                         <td>
                             <asp:TextBox ID="txtPropKitchen" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter Price of The Property</td>
                         <td>
                             <asp:TextBox ID="txtPrice" runat="server" autocomplete="off" AutoPostBack="True" CssClass="txtstyle2" Height="32px" OnTextChanged="txtPrice_TextChanged" Width="220px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter Booking Price of The Property</td>
                         <td>
                             <asp:TextBox ID="txtBook" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter Rent Status</td>
                         <td>
                             <asp:RadioButton ID="RadioButton1" runat="server" CssClass="fa-inverse" Text="Available" GroupName="Name" />
                             &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" CssClass="fa-inverse" Text="Not Available" GroupName="Name" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Enter Rent amount</td>
                         <td><strong>
                             <asp:TextBox ID="ttxtRentAmount" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                             </strong></td>
                         <tr>
                             <td class="auto-style5">Enter Rent Duration in months</td>
                             <td><strong>
                                 <asp:TextBox ID="txtDuration" runat="server" autocomplete="off" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                                 </strong></td>
                             <tr>
                                 <td class="auto-style5">Enter Agreement</td>
                                 <td><strong>
                                     <asp:TextBox ID="txtAgreemnet" runat="server" autocomplete="off" CssClass="txtstyle2" Height="82px" TextMode="MultiLine" Width="220px"></asp:TextBox>
                                     </strong></td>
                             </tr>
                             <tr>
                                 <td class="auto-style5">Enter Description of the Property</td>
                                 <td>
                                     <asp:TextBox ID="txtDescription" runat="server" autocomplete="off" CssClass="txtstyle2" Height="82px" TextMode="MultiLine" Width="220px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5">Select the Area Category</td>
                                 <td>
                                     <asp:RadioButton ID="RadioButtonCommercial" runat="server" CssClass="fa-inverse" GroupName="Category" Text="Commercial" />
                                     &nbsp;<asp:RadioButton ID="RadioButtonResidential" runat="server" CssClass="fa-inverse" GroupName="Category" Text="Residential" />
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5">Enter Locality</td>
                                 <td>
                                     <asp:TextBox ID="txtLocality" runat="server" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style5">Enter Area Pin code</td>
                                 <td><strong>
                                     <asp:TextBox ID="txtArea" runat="server" CssClass="txtstyle2" Height="32px" Width="220px"></asp:TextBox>
                                     </strong></td>
                             </tr>
                              <tr>
                         <td class="auto-style5">Image 1</td>
                         <td>
                             <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txtstyle2" Height="32px" Width="220px" />
                         </td>
                         <caption>
                             <br/>
                         </caption>
                     </tr>
                     <tr>
                         <td class="auto-style5">Image 2</td>
                         <td>
                             <asp:FileUpload ID="FileUpload2" runat="server" CssClass="txtstyle2" Height="32px" Width="220px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Image 3</td>
                         <td>
                             <asp:FileUpload ID="FileUpload3" runat="server" CssClass="txtstyle2" Height="32px" Width="220px" />
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Image 4</td>
                         <td>
                             <asp:FileUpload ID="FileUpload4" runat="server" CssClass="txtstyle2" Height="32px" Width="220px" />
                         </td>
                     </tr>
                             <tr>
                                 <td>&nbsp;</td>
                                 <td>
                                     <asp:Button ID="btnPropSubmit" runat="server" CssClass="txtstyle3" OnClick="btnPropSubmit_Click" text="Submit" />
                                     &nbsp;&nbsp;&nbsp;<strong><asp:LinkButton ID="lnkButton" runat="server" CssClass="auto-style4"></asp:LinkButton>
                                     </strong></td>
                             </tr>
                         </tr>
                     </tr>
                 </table>
                 <br />
        
     </strong>
    
         </asp:Panel>
             </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Prop_id" DataSourceID="SqlDataSource2" Height="175px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Prop_id" HeaderText="Prop_id" SortExpression="Prop_id" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Sell_id" HeaderText="Sell_id" SortExpression="Sell_id" />
            <asp:BoundField DataField="Admin_id" HeaderText="Admin_id" SortExpression="Admin_id" />
            <asp:BoundField DataField="Property_Name" HeaderText="Property_Name" SortExpression="Property_Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Image1" HeaderText="Image1" SortExpression="Image1" />
            <asp:BoundField DataField="Image2" HeaderText="Image2" SortExpression="Image2" />
            <asp:BoundField DataField="Image3" HeaderText="Image3" SortExpression="Image3" />
            <asp:BoundField DataField="Image4" HeaderText="Image4" SortExpression="Image4" />
            <asp:BoundField DataField="BHK" HeaderText="BHK" SortExpression="BHK" />
            <asp:BoundField DataField="Floor" HeaderText="Floor" SortExpression="Floor" />
            <asp:BoundField DataField="Washroom" HeaderText="Washroom" SortExpression="Washroom" />
            <asp:BoundField DataField="Bedroom" HeaderText="Bedroom" SortExpression="Bedroom" />
            <asp:BoundField DataField="hall" HeaderText="hall" SortExpression="hall" />
            <asp:BoundField DataField="kitchen" HeaderText="kitchen" SortExpression="kitchen" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Booking_Price" HeaderText="Booking_Price" SortExpression="Booking_Price" />
            <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
            <asp:BoundField DataField="Rent_amount" HeaderText="Rent_amount" SortExpression="Rent_amount" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:BoundField DataField="Ageement" HeaderText="Ageement" SortExpression="Ageement" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
            <asp:BoundField DataField="Locality" HeaderText="Locality" SortExpression="Locality" />
            <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>" DeleteCommand="DELETE FROM [Property_info] WHERE [Prop_id] = @Prop_id" InsertCommand="INSERT INTO [Property_info] ([Sell_id], [Admin_id], [Property_Name], [Address], [Image1], [Image2], [Image3], [Image4], [BHK], [Floor], [Washroom], [Bedroom], [hall], [kitchen]) VALUES (@Sell_id, @Admin_id, @Property_Name, @Address, @Image1, @Image2, @Image3, @Image4, @BHK, @Floor, @Washroom, @Bedroom, @hall, @kitchen)" SelectCommand="SELECT * FROM [Property_info]" UpdateCommand="UPDATE [Property_info] SET [Sell_id] = @Sell_id, [Admin_id] = @Admin_id, [Property_Name] = @Property_Name, [Address] = @Address, [Image1] = @Image1, [Image2] = @Image2, [Image3] = @Image3, [Image4] = @Image4, [BHK] = @BHK, [Floor] = @Floor, [Washroom] = @Washroom, [Bedroom] = @Bedroom, [hall] = @hall, [kitchen] = @kitchen WHERE [Prop_id] = @Prop_id">
        <DeleteParameters>
            <asp:Parameter Name="Prop_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Sell_id" Type="Int32" />
            <asp:Parameter Name="Admin_id" Type="Int32" />
            <asp:Parameter Name="Property_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Image1" Type="String" />
            <asp:Parameter Name="Image2" Type="String" />
            <asp:Parameter Name="Image3" Type="String" />
            <asp:Parameter Name="Image4" Type="String" />
            <asp:Parameter Name="BHK" Type="Int32" />
            <asp:Parameter Name="Floor" Type="Int32" />
            <asp:Parameter Name="Washroom" Type="Int32" />
            <asp:Parameter Name="Bedroom" Type="Int32" />
            <asp:Parameter Name="hall" Type="Int32" />
            <asp:Parameter Name="kitchen" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Sell_id" Type="Int32" />
            <asp:Parameter Name="Admin_id" Type="Int32" />
            <asp:Parameter Name="Property_Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Image1" Type="String" />
            <asp:Parameter Name="Image2" Type="String" />
            <asp:Parameter Name="Image3" Type="String" />
            <asp:Parameter Name="Image4" Type="String" />
            <asp:Parameter Name="BHK" Type="Int32" />
            <asp:Parameter Name="Floor" Type="Int32" />
            <asp:Parameter Name="Washroom" Type="Int32" />
            <asp:Parameter Name="Bedroom" Type="Int32" />
            <asp:Parameter Name="hall" Type="Int32" />
            <asp:Parameter Name="kitchen" Type="Int32" />
            <asp:Parameter Name="Prop_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;<br />
    <br />
    <br />
         </div>
         </div>
    </div>
     </strong>
    
</asp:Content>


