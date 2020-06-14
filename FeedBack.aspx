<%@ Page Title="" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
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
    .auto-style5 {
        color: #fff;
        font-size: xx-large;
    }
    .auto-style6 {
        color: #87a310;
        font-size: xx-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <span class="auto-style6">Feedback </span><span class="auto-style5">Form</span>
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
            <td>Your Feedback</td>
            <td>
                <asp:TextBox ID="txtFeedback" runat="server" Height="77px" Width="265px" CssClass="txtstyle1" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="txtstyle2" ForeColor="White" OnClick="btnClear_Click"/>
&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="txtstyle2" ForeColor="White" OnClick="Button2_Click"/>
                <br />
            </td>
        </tr>
       
    </table>
</asp:Content>

