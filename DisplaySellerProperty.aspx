<%@ Page Title="List of Seller Estate" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="DisplaySellerProperty.aspx.cs" Inherits="DisplaySellerProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            width: 100%;
        }
        .background{
            background-image:url("images/background.jpg");
        }
        .auto-style7 {
            text-align: center;
        }
        .newStyle1 {
            font-family: "Baskerville Old Face";
        }
        .auto-style8 {
            font-family: "Baskerville Old Face";
            font-size: 45px;
            text-decoration: underline;
        }
        .auto-style9 {
            font-family: "Baskerville Old Face";
            font-size: 35px;
            text-decoration: underline;
        }
        .auto-style10 {
            color: #87a310;
            font-size: 35px;
        }
        .auto-style11 {
            font-family: "Baskerville Old Face";
            text-decoration: underline;
        }
        .auto-style12 {
            font-size: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="background">
        <div class="auto-style7">
            <span class="auto-style11"> 
            <br class="auto-style12" />
            </span>
            <span class="auto-style8"> 
            <span class="auto-style10">Find Your</span></span><span class="auto-style9"> Property<br />
            </span><span class="auto-style5"><br />
    <br />
&nbsp;</span>
        </div>
    <div>

        <asp:DataList ID="DataList1" runat="server" DataKeyField="Sell_id" DataSourceID="SqlDataSource1" RepeatColumns="4" CellPadding="2" CellSpacing="2">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td>
                           &nbsp; <asp:Image ID="Image1" runat="server" Height="117px" BorderStyle="Solid" BorderWidth="5px" ImageUrl='<%# Eval("Image1") %>' Width="222px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Property_Name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl='<%# Eval("Sell_id","PrppertiesDetails.aspx?sid={0}") %>' Text="ViewDetails" />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>"
             SelectCommand="SELECT * FROM [SellerUpload_Property]"></asp:SqlDataSource>

    </div>
         </div>
</asp:Content>

