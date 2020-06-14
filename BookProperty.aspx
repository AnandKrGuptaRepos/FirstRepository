<%@ Page Title="" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="BookProperty.aspx.cs" Inherits="BookProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .auto-style6 {
            font-family: "Bookman Old Style";
            font-size: 35px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 101%;
            height: 280px;
        }
         .txtstyle2{
             border-radius:5px;
            background-color:rgba(255,255,255,0.7);
        }
        .txtstyle3{
            border-radius:5px;
            background-color:forestgreen;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="auto-style6">
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Booking Payment
        <br />
        <br />
        <br />     
      </div>
    <div>

        <table class="auto-style8">
            <tr>
                <td>
                    <table class="auto-style7">
                        <tr>
                            <td>Property Id</td>
                            <td>
                                <asp:Label ID="lblPropertyId" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Booking Amount</td>
                            <td>
                                <asp:Label ID="lblBooking" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Choose Payment Method</td>
                            <td>
                                <table class="auto-style7">
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonDebit" runat="server" GroupName="Name" Text="Debit" AutoPostBack="True" OnCheckedChanged="RadioButtonDebit_CheckedChanged" />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonCredit" runat="server" GroupName="Name" Text="Credit" AutoPostBack="True" OnCheckedChanged="RadioButtonCredit_CheckedChanged" />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonGoogleWallet" runat="server" GroupName="Name" Text="GoogleWallet" AutoPostBack="True" OnCheckedChanged="RadioButtonGoogleWallet_CheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonPaytm" runat="server" GroupName="Name" Text="Paytm" AutoPostBack="True" OnCheckedChanged="RadioButtonPaytm_CheckedChanged" />
                                            <br />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonBankPayment" runat="server" GroupName="Name" Text="Bank Payment" AutoPostBack="True" OnCheckedChanged="RadioButtonBank_CheckedChanged" />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonvisa" runat="server" GroupName="Name" Text="Visa" AutoPostBack="True" OnCheckedChanged="RadioButtonVisa_CheckedChanged" />
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblDetails" runat="server" Visible="False"></asp:Label>
                            </td>
                            <td>
                               
                                <asp:TextBox ID="txtmobile" runat="server" Width="170px" CssClass="txtstyle2"  Visible="False" placholder="Mobile Number"></asp:TextBox>
                               
                                &nbsp;<asp:TextBox ID="txtAccount" runat="server" Width="170px" CssClass="txtstyle2"  Visible="False" placholder="Account Number"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="txtCard" runat="server" Width="170px" CssClass="txtstyle2" Placeholder="Card Number" Visible="False"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtCVV" runat="server" Width="170px" CssClass="txtstyle2" placeholder="Card CVV number" Visible="False"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="txtExpiry" runat="server" Width="170px" CssClass="txtstyle2" placeholder="Card Expiry date" Visible="False"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtCreated" runat="server" Width="170px" CssClass="txtstyle2" placeholder="Card Created date" Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Visible="False">ViewBookOrder</asp:LinkButton>
                                <br />
                                <br />
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="txtstyle3" OnClick="btnSubmit_Click" />
&nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="txtstyle3" OnClick="btnClear_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:Panel ID="Panel1" runat="server" Height="275px" Width="274px">
                        <asp:Image ID="Image1" runat="server" Height="273px" ImageUrl="~/images/Book.jpg" Width="271px" />
                    </asp:Panel>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

