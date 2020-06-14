<%@ Page Title="" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            color: #87a310;
            font-size: xx-large;
        }
        .auto-style3 {
            color:  #87a310;
            font-size: xx-large;
        }
        .auto-style4 {
            width: 100%;
        }
         .txtstyle1{
             border-radius:5px;
            background-color:rgba(255,255,255,0.7);
        }
        .txtstyle2{
            border-radius:5px;
            background-color:forestgreen;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span class="auto-style2">Contact </span><span class="auto-style3">Form</span>
    <br />
    <br />
    <br />


    <table class="auto-style4">
        <tr>
            <td>Your Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="267px" CssClass="txtstyle1"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>Your Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="267px" CssClass="txtstyle1"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>Enter Your Contact Details<br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContact" runat="server" Height="119px" TextMode="MultiLine" Width="439px" CssClass="txtstyle1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="txtstyle2" ForeColor="White" OnClick="btnClear_Click"/>
&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="txtstyle2" ForeColor="White" OnClick="Button2_Click"/>
                <br />
            </td>
        </tr>
       
    </table>


</asp:Content>

