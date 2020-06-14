<%@ Page Title="" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="SellerProfile.aspx.cs" Inherits="_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .txtstyle1{
             border-radius:5px;
            background-color:rgba(255,255,255,0.7);
        }
        .txtstyle2{
            border-radius:5px;
            background-color:forestgreen;
        }
        .auto-style8 {
            width: 100%;
            height: 368px;
        }
        .auto-style9 {
            margin-left: 0;
        }
        .auto-style10 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style11 {
            color: #87a310;
            font-size: xx-large;
            text-decoration: underline;
        }
        .back{
            background-image:url("images/background.jpg");
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            height: 42px;
        }
        .auto-style17 {
            color: #87a310;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="back">
    <div class="auto-style13">
         <div class="auto-style15">
             <span class="auto-style6">
         <u>
        <br />
             </u>
         <span class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
         <span class="auto-style11">Seller</span></span><span class="auto-style10"> Profile</span><u><span class="auto-style6"><br />
         <br />
         </span></u>
        &nbsp;<br />
         </div>
        <table class="auto-style8">
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="3px" Height="402px" Width="751px">
                         
        
                        <br>
                        <br>
                        
                        <br>
                        <br>
    <table class="auto-style7">
        <tr>
            <td class="auto-style15">Enter Your Seller Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="250px" CssClass="txtstyle1" ></asp:TextBox>
                <br />
            </td>
        </tr>
         <tr>
            <td class="auto-style15">Enter User Name</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Width="250px" CssClass="txtstyle1" ></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Enter your EmailId</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="250px" CssClass="txtstyle1"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Enter Your Phone</td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server" Width="250px" CssClass="txtstyle1"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Enter Your Age</td>
            <td>
                <asp:TextBox ID="txtAge" runat="server" Width="250px" CssClass="txtstyle1"></asp:TextBox>
                <br />
            </td>
        </tr>
          <tr>
            <td class="auto-style15">Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Width="250px" CssClass="txtstyle1"></asp:TextBox>
                <br />
            </td>
              <tr>
              <td class="auto-style15">Confirm Password</td>
            <td>
                <asp:TextBox ID="txtconfirmPassword" runat="server" Width="250px" CssClass="txtstyle1"></asp:TextBox>
                <br />
            </td>
                  
        </tr>
        <tr>
            <td class="auto-style15">Upload Your Image</td>
             <td class="auto-style15">
                 <asp:FileUpload ID="FileUpload1" runat="server" />
                
            </td>
            <tr><td>
                <br />
                <br />
                <asp:Label ID="lblerrorMessage" runat="server" ></asp:Label>
            
                </td>
            
           
        </tr>
        <tr>
            <td>

                <asp:CheckBox ID="CheckBox1" runat="server" />
                Yes I have read all the Following<a href="Terms_and_conditions.aspx">Terms and Condtions.</a> 

                </td>
            </tr>
        <tr>
            <td>
               &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lnkbtnUploadProperty" runat="server" OnClick="lnkbtnUploadProperty_Click" Visible="False">Upload Your Property</asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton ID="lnkbtnViewProfile" runat="server" Visible="False">View Profile</asp:LinkButton>
              </td>
            <td class="auto-style16">
                 <asp:Button runat="server" Text="Submit" ForeColor="White" CssClass="txtstyle2" OnClick="btnSubmit_Click" class="auto-style16"/>&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" ForeColor="White" CssClass="txtstyle2" OnClick="btnClear_Click"/>
                <br />
                <br />
            </td>
        </tr>
            <tr>
                <td colspan="2">Already have a Seller Account?<br />Login <a href="SellerLogin.aspx">here</a> </td>
            <tr>
                <td>&nbsp;</td>
                </tr>
    </table>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style9" Height="363px" Width="176px">
                        <asp:Image ID="Image1" runat="server" Height="358px" ImageUrl="~/images/SellerProfile.jpg" Width="175px" />
                    </asp:Panel>
                </td>
            </tr>
        </table>
        </div>
    
    
       </div>  
    
</asp:Content>

