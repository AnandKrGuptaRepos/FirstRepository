<%@ Page Title="" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="PrppertiesDetails.aspx.cs" Inherits="PrppertiesDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            margin-bottom: 0;
            height: 363px;
        }
        .auto-style6 {
            height: 20px;
        }
        .background{
            background-image: url("images/background.jpg");
        }
        .auto-style7 {
            height: 19px;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            height: 20px;
            font-size: large;
        }
         .txtstyle1{
             border-radius:5px;
            
        }
        .auto-style10 {
            width: 99%;
            margin-bottom: 0;
            height: 189px;
        }
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .auto-style11 {
            font-family: "Bookman Old Style";
            font-size: xx-large;
        }
        .auto-style12 {
            text-align: center;
        }
        .txtstyle2 {
            border-radius: 5px;
            background-color: forestgreen;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        <asp:Panel ID="Panel1" runat="server" Width="1033px">
    <table class="auto-style10">
        <tr>
            <td>
                &nbsp;<asp:Image ID="Image1" runat="server" Height="180px" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" Width="249px" />
            </td>

            <td>&nbsp;<asp:Image ID="Image2" runat="server" Height="180px" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" Width="247px" />
</td>
           <td>&nbsp;<asp:Image ID="Image3" runat="server" Height="180px" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" Width="247px" />
</td>                                                   
           <td>&nbsp;<asp:Image ID="Image4" runat="server" Height="180px" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" Width="248px" />
</td></tr>
        
        </table>
            <asp:Panel ID="Panel2" runat="server" BorderColor="#87A310" BorderStyle="Solid" BorderWidth="5px" Width="701px" CssClass="txtstyle1" Height="452px">
                 <div class="background">
                <div class="auto-style12">
                    <u><span class="color1"> </span><span class="auto-style11">&nbsp;Property Description</span><br /></u>
                    <br>
                    <br>
                   
                    <br></br>
                   
                    </br>
                </div>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style7" colspan="2"><span class="auto-style8">Property Name</span></td>
                        <td class="auto-style7" colspan="2">
                            <asp:Label ID="LblPropName" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2">Location or Address</td>
                        <td colspan="2">
                            <asp:Label ID="LblAddress" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2">Number of BHK </td>
                        <td colspan="2">
                            <asp:Label ID="LblBHK" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2">Number of Floor</td>
                        <td colspan="2">
                            <asp:Label ID="LblFLoor" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2">Number of Washroom</td>
                        <td colspan="2">
                            <asp:Label ID="LblWashroom" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2">Number of Bedroom</td>
                        <td colspan="2">
                            <asp:Label ID="LblBedroom" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2">Number of Hall</td>
                        <td colspan="2">
                            <asp:Label ID="LblHall" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style8" colspan="2">Rent status</td>
                        <td colspan="2">
                            <asp:Label ID="lblrentstatus" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">Number of Kitchen<br /> </td>
                        <td class="auto-style6" colspan="2">
                            <asp:Label ID="LblKitchen" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">Price of the Property<br /> </td>
                        <td class="auto-style6" colspan="2">
                            <asp:Label ID="lblPrice" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9" colspan="2">Booking value of the Porperty<br /> </td>
                        <td class="auto-style6" colspan="2">
                            <asp:Label ID="lblBook" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style9" colspan="2">Rent amount of the Property<br /> </td>
                        <td class="auto-style6" colspan="2">
                            <asp:Label ID="LabelRent" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" colspan="2">Description<br /> </td>
                        <td colspan="2" rowspan="2">
                            <asp:Label ID="LblDesc" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;<asp:Button ID="btnBookProperty" runat="server" OnClick="btnBookProperty_Click" CssClass="txtstyle2" Text="Book This Property" />
                            &nbsp;<asp:Button ID="btnRent" runat="server" Text="Take Rent" CssClass="txtstyle2" OnClick="btnRent_Click" style="height: 22px"/>
                        </td>
                    </tr>
                      <tr>
                        <td colspan="2">&nbsp;<asp:Button ID="btnviewSeller" runat="server" CssClass="txtstyle2" Text="View Seller" OnClick="btnviewSeller_Click" />
                            
                        </td>
                    </tr>
                </table>
         </asp:Panel>
    </table>
            </asp:Panel>
        </div>
</asp:Content>

