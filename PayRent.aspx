<%@ Page Title="" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="PayRent.aspx.cs" Inherits="PayRent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 400px;
        }
        .auto-style7 {
            width: 100%;
            height: 249px;
        }
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            font-family: "Bookman Old Style";
            font-size: 32px;
            text-decoration: underline;
        }
        .auto-style10 {
            width: 400px;
            text-align: center;
        }
        .auto-style11 {
            width: 400px;
            text-align: left;
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
    <div>
       
        <table class="auto-style5">
            <tr>
                <td>
                    <div class="auto-style8">
                        <span class="auto-style9">
                        <br />
                        Payment Rent<br />
                        </span><br />
                    <br />
                    </div>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style6">Property Id</td>
                            <td>
                                <asp:Label ID="lblProperty" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">Rent amount</td>
                            <td>
                                <asp:Label ID="lblRentAmount" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Choose Payment Method<br />
                                <br />
                            </td>
                            <td>
                                <table class="auto-style5">
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonDebit" runat="server" Text="Debit" GroupName="details" OnCheckedChanged="RadioButtonDebit_CheckedChanged" AutoPostBack="True" />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonCredit" runat="server" Text="Credit" GroupName="details" OnCheckedChanged="RadioButtonCredit_CheckedChanged" AutoPostBack="True" />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonGoogleWallet" runat="server" Text="GoogleWallet" GroupName="details" OnCheckedChanged="RadioButtonGoogleWallet_CheckedChanged" AutoPostBack="True" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonPaytm" runat="server" Text="Paytm" GroupName="details" OnCheckedChanged="RadioButtonPaytm_CheckedChanged" AutoPostBack="True" />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonBank" runat="server" Text="Bank Payment" GroupName="details" OnCheckedChanged="RadioButtonBank_CheckedChanged" AutoPostBack="True" />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="RadioButtonVisa" runat="server" Text="visa " GroupName="details" OnCheckedChanged="RadioButtonVisa_CheckedChanged" AutoPostBack="True" />
                                        </td>
                                    </tr>
                                    </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                &nbsp;
                                <asp:Label ID="lblDetails" runat="server"></asp:Label>
                            </td>
                            <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox><br/>
                            <td>
                                <asp:TextBox ID="txtNumberDetails" runat="server" Visible="False" CssClass="txtstyle2" placeholder="Mobile number"> </asp:TextBox>
                                &nbsp;<asp:TextBox ID="txtAccountNo" runat="server" Width="124px"  placeholder="Account number" Visible="False" CssClass="txtstyle2"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="txtCardNumber" runat="server" placeholder="Card Number" Visible="False" CssClass="txtstyle2"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtCVV" runat="server" Width="124px"  placeholder="CVV Number" Visible="False" CssClass="txtstyle2"></asp:TextBox>
&nbsp;<br />
                                <asp:TextBox ID="txtExpiry" runat="server" placeholder="Card Expiry date" Visible="False" CssClass="txtstyle2"></asp:TextBox>
&nbsp;<asp:TextBox ID="txtCreated" runat="server" Width="124px"  placeholder="Card Created date" Visible="False" CssClass="txtstyle2"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                <br />
                                <br />
                                
                                &nbsp;<br />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Button ID="Button1" runat="server" Text="Pay" OnClick="Button1_Click" CssClass="txtstyle3" style="height: 22px" />
&nbsp;<asp:Button ID="BtnClear" runat="server" Text="Clear" CssClass="txtstyle3" OnClick="BtnClear_Click" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        
                    </table>
                   
                </td>
                <td>
                    <asp:Panel ID="Panel1" runat="server" Height="326px" Width="247px">
                        <asp:Image ID="Image1" runat="server" Height="287px" ImageUrl="~/images/Rent.jpg" Width="247px" />
                    </asp:Panel>
                </td>
            </tr>
        </table>
       
        </div>
</asp:Content>

