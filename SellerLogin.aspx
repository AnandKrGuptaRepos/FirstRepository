<%@ Page Title="" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="SellerLogin.aspx.cs" Inherits="SellerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
               
       .background{
           background-image:url("images/background.jpg");
       }
        .txtStyle1{
            font-size: 40px;
        }
         .txtstyle2{
             border-radius:5px;
            background-color:rgba(255,255,255,0.7);
        }
        .txtstyle3{
            border-radius:5px;
            background-color:forestgreen;
        }
        .auto-style3 {
            width: 100%;
            margin-bottom: 0;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            width: 444px;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style7 {
             width: 250px;
         }
        .auto-style8 {
            width: 98%;
            font-size: x-large;
            margin-bottom: 0;
        }
        .auto-style9 {
            text-align: center;
        }
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .auto-style10 {
            font-family: "Bookman Old Style";
            font-size: 45px;
        }
        .auto-style11 {
             width: 250px;
             font-size: large;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br>
     <div class="background">
 
       
    <div class="auto-style9">
        <div class="auto-style9">
        <span class=".txtStyle1"><span class="color1">
        <br />
        </span> 
        </span>
        <u><span class="color1"><span class="auto-style10">Seller Login</span></span><span class=".txtStyle1"><span class="auto-style10"> Form</span></span></u><span class=".txtStyle1"><br />
        <br />
        <br />
        </span>
        </div>
        <table class="auto-style8">
            <tr>
                <td class="auto-style11">User Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtUserName" runat="server" autocomplete="off" Width="190px" CssClass="txtstyle2"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Password</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPassword" runat="server" autocomplete="off" Width="190px" CssClass="txtstyle2" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    
&nbsp;
                    <br />
                    <asp:Label ID="lblErrorMessage" runat="server" CssClass="auto-style6" ForeColor="#87A310"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Visible="False">Seller Login</asp:LinkButton>
                </td>
                <td><asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login"  CssClass="txtstyle3" style="width: 43px; height: 22px;"/>&nbsp;<asp:Button ID="btnClear" runat="server" CssClass="txtstyle3" OnClick="btnClear_Click" Text="Clear" />
                    <br />
                    <br />
                </td>
              
            </tr>
            <tr>
                <td colspan="2">
                   Don't have any Seller Account? <br />
                    Dont Worry.<br />
                    Create One <a href="SellerProfile.aspx">here</a>
                    </td>
                </tr>
        </table>
        <br />

        </div>
           
      
          </div>
       
</asp:Content>

