<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/SellerMaster.master" AutoEventWireup="true" CodeFile="SellerUploadProperty.aspx.cs" Inherits="Seller_SellerUploadProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
         .background{
            background-image: url('../images/background.jpg');
        }
        .auto-style7 {
            font-size: 32px;
        }
        .auto-style8 {
            font-size: medium;
            color: #FFFFFF;
        }
        .auto-style9 {
            font-size: medium;
            width: 388px;
            color: #FFFFFF;
        }
        .auto-style10 {
            width: 388px;
        }
        .txtstyle1{
             border-radius:5px;
           
        }
        .txtstyle2{
             border-radius:5px;
            background-color:rgba(255,255,255,0.7);
        }
        .txtstyle3{
            border-radius:5px;
            background-color:forestgreen;
        }
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .auto-style11 {
            font-family: "Bookman Old Style";
            font-size: 32px;
        }
        .auto-style12 {
            width: 100%;
            height: 888px;
        }
        .auto-style13 {
            font-family: "Bookman Old Style";
            font-size: 35px;
        }
        .auto-style14 {
            font-family: "Bookman Old Style";
            font-size: 38px;
        }
        .auto-style16 {
            font-size: 35px;
        }
        .auto-style17 {
            width: 388px;
            color: #FFFFFF;
        }
        .auto-style18 {
            color: #CCCCCC
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="background">
        <asp:panel runat="server" Height="1041px" ID="panelback" BorderWidth="2px" CssClass="txtstyle1" Width="951px">
        <table class="auto-style6">
            <tr>
                <td><span class="auto-style7">
                    <br />
                    &nbsp;</span><span class="color1"><span class="auto-style11"> </span>
                    </span>
                    <u><span class="auto-style13"><span class="color1">Upload Property</span></span></u><span class="auto-style14"><u class="auto-style16"> <span class="auto-style18">Information</span></u></span><span class="auto-style13"><u><br /> </u></span><span class="auto-style11">
                    <br />
                    <br />
                    </span>
                    <table class="auto-style12">
                        <tr>
                            <td class="auto-style9">&nbsp; Property Name</td>
                            <td id="txtPropName">
                                <asp:TextBox ID="txtProperty" runat="server" CssClass="txtstyle2" Height="23px" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Address</td>
                            <td>
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="txtstyle2" Height="23px" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                      
                        <tr>
                            <td class="auto-style9">&nbsp; Number of BHK</td>
                            <td>
                                <asp:TextBox ID="txtBHK" runat="server" CssClass="txtstyle2" Height="23px" MaxLength="10" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Number of Floor</td>
                            <td>
                                <asp:TextBox ID="txtFloor" runat="server" CssClass="txtstyle2" Height="23px" MaxLength="10" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Number of Washroom</td>
                            <td>
                                <asp:TextBox ID="txtWashroom" runat="server" CssClass="txtstyle2" Height="23px" MaxLength="10" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Number of Bedroom</td>
                            <td>
                                <asp:TextBox ID="txtBedroom" runat="server" CssClass="txtstyle2" Height="23px" MaxLength="10" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Number of Hall</td>
                            <td>
                                <asp:TextBox ID="txtHall" runat="server" CssClass="txtstyle2" Height="23px" MaxLength="10" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Number of Kitchen</td>
                            <td>
                                <asp:TextBox ID="txtKitchen" runat="server" CssClass="txtstyle2" Height="23px" MaxLength="10" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                         <td class="auto-style9">&nbsp; Price of Property</td>
                            <td>
                                <asp:TextBox ID="txtPrice" runat="server" Height="23px" Width="212px" CssClass="txtstyle2" AutoPostBack="True" OnTextChanged="txtPrice_TextChanged"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                            </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Booking Price of Property</td>
                            <td>
                                <asp:TextBox ID="txtBookingPrice" runat="server" CssClass="txtstyle2" Height="23px" Width="212px" OnTextChanged="txtBookingPrice_TextChanged"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblCommsionMessage" runat="server" CssClass="color2"></asp:Label>
                                <br />
                            </td>
                        <tr>
                            <td class="auto-style9">&nbsp; Choose Category</td>
                            <td>
                                <asp:RadioButton ID="RadioButtonCommercial" runat="server" ForeColor="White" GroupName="category" Text="Commercial" />
                                &nbsp;<br />
                                <asp:RadioButton ID="RadioButtonResidential" runat="server" ForeColor="White" GroupName="category" Text="Residential" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Enter Location</td>
                            <td>
                                <asp:TextBox ID="txtLocation" runat="server" CssClass="txtstyle2" Height="23px" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Enter Area Pin Code</td>
                            <td>
                                <asp:TextBox ID="txtAreapin" runat="server" CssClass="txtstyle2" Height="23px" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Description of the Property</td>
                            <td>
                                <asp:TextBox ID="txtDescription" runat="server" CssClass="txtstyle2" Height="79px" TextMode="MultiLine" Width="212px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                              <tr>
                            <td class="auto-style9">&nbsp; Image1</td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txtstyle2" Height="23px" Width="212px" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Image2</td>
                            <td>
                                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="txtstyle2" Height="23px" Width="212px" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Image3</td>
                            <td>
                                <asp:FileUpload ID="FileUpload3" runat="server" CssClass="txtstyle2" Height="23px" Width="212px" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp; Image4</td>
                            <td>
                                <asp:FileUpload ID="FileUpload4" runat="server" CssClass="txtstyle2" Height="23px" Width="212px" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td>
                                <br />
                                <asp:Button ID="btnSubmit" runat="server" CssClass="txtstyle3" OnClick="btnSubmit_Click" Text="Upload Property" />
                                &nbsp;<asp:Button ID="btnClear" runat="server" CssClass="txtstyle3" OnClick="btnClear_Click" Text="clear" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="lblErrorMessage" runat="server" CssClass="auto-style8"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </td>
                <td>
                    <asp:Panel ID="Panel1" runat="server" Height="1025px" Width="408px">

                            <br/><br/><br/>&nbsp;<asp:Image runat="server" Height="669px" ImageUrl="~/images/Front.jpg" Width="405px"></asp:Image>
                          
                    </asp:Panel>
                </td>
            </tr>
        </table>
            </asp:panel>
        </div>
</asp:Content>

