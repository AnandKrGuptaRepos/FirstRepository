<%@ Page Title="" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .txtstyle1{
             border-radius:5px;
            background-color:rgba(255,255,255,0.7);
        }
        .background{
            background-image:url("images/background.jpg");
                        }
        .txtstyle2{
            border-radius:5px;
            background-color:forestgreen;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style4 {
        font-size: medium;
        text-align: left;
        width: 524px;
    }
        .auto-style6 {
        width: 524px;
    }
    .auto-style8 {
        height: 20px;
    }
    .auto-style10 {
        height: 40px;
    }
        .auto-style12 {
            font-size: small;
        }
        .auto-style13 {
            font-size: small;
            color: #87A310;
        }
        .auto-style14 {
            font-size: xx-large;
            color: #87A310;
        }
        .auto-style15 {
            border-radius: 5px;
            background-color: rgba(255,255,255,0.7);
            font-size: small;
        }
        .auto-style16 {
            font-size: large;
            text-align: center;
            width: 524px;
            height: 40px;
        }
        .auto-style18 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style19 {
            font-size: large;
            text-align: center;
            width: 524px;
            text-decoration: none;
        }
        .auto-style20 {
            text-align: center;
            font-size: large;
        }
        .newStyle1 {
            font-family: "Bookman Old Style";
        }
        .auto-style21 {
            color: #CCCCCC;
            font-size: 40px;
            text-decoration: underline;
        }
        .auto-style22 {
            color: #87A310;
            font-size: 40px;
            text-decoration: underline;
        }
         .txtstyle3{
            border-radius:5px;
            background-color:forestgreen;
        }
        .auto-style23 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="background">
      
        <div class="auto-style18">
            <span class="auto-style14">
            <br />
            </span><span class="newStyle1"><span class="auto-style22">Registration</span> <span class="auto-style21">Page<br />
            </span></span><br />
        <br />
        </div>
        <table class="auto-style2">
        <tr>
            <td class="auto-style19">Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" autocomplete="off" CssClass="txtstyle1" Width="202px"></asp:TextBox>
        <span class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name feild can't be empty" ForeColor="#87A310" SetFocusOnError="True" CssClass="auto-style13"></asp:RequiredFieldValidator>
                <br />
                </span>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">User Name</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtUserName" runat="server" autocomplete="off" CssClass="txtstyle1" Width="202px"></asp:TextBox>
        <span class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserName" ErrorMessage="User Name feild can't be empty" ForeColor="#87A310" SetFocusOnError="True" CssClass="auto-style12"></asp:RequiredFieldValidator>
                <br />
                </span>
            </td>
            <tr>
                <td class="auto-style19">
                    Sex</td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="User" Text="Male" />
                    <asp:Image ID="Image1" runat="server" Height="51px" ImageUrl="~/images_uploads/male.png" Width="46px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Image ID="Image2" runat="server" Height="51px" ImageUrl="~/images_uploads/female.png" Width="50px" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="User" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Female" />
                    <br />
                </td>
                </tr>
        <tr>
            <td class="auto-style20" >Phone</td>
            <td>
                <asp:TextBox ID="txtPhonePrefix" runat="server" CssClass="txtstyle1" Width="26px" ReadOnly="True">+91</asp:TextBox>
                <asp:TextBox ID="txtPhone" runat="server" autocomplete="off" Width="172px" CssClass="txtstyle1" MaxLength="10"></asp:TextBox>
        <span class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone  number feild can't be empty" ForeColor="#87A310" SetFocusOnError="True" CssClass="auto-style12"></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">Address</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" autocomplete="off" CssClass="txtstyle1" Width="198px" Height="54px" TextMode="MultiLine"></asp:TextBox>
        <span class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address feild can't be empty" ForeColor="#87A310" SetFocusOnError="True" CssClass="auto-style12" ></asp:RequiredFieldValidator>
                <br />
                </span>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="txtstyle1" Width="202px" autocomplete="off" TextMode="Password"></asp:TextBox>
        <span class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password feild can't be empty" ForeColor="#87A310" SetFocusOnError="True" CssClass="auto-style12" ></asp:RequiredFieldValidator>
                <br />
                </span>
            </td>
        </tr>
             <tr>
            <td class="auto-style19">Confirm Password</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtConfirmPassword" runat="server" autocomplete="off" CssClass="txtstyle1" Width="202px" TextMode="Password"></asp:TextBox>
        <span class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please re-enter the Password" ForeColor="#87A310" SetFocusOnError="True" CssClass="auto-style12"></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="The Password is not match" ForeColor="#87A310" SetFocusOnError="True" CssClass="auto-style15"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Email ID </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" autocomplete="off" CssClass="txtstyle1" Width="202px"></asp:TextBox>
        <span class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email feild cant't be empty" ForeColor="#87A310" SetFocusOnError="True" CssClass="auto-style12" ></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="auto-style12" ErrorMessage="Please write email in proper order" ForeColor="#87A310" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Age</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtAge" runat="server" autocomplete="off" CssClass="txtstyle1" Width="202px"></asp:TextBox>
        <span class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAge" ErrorMessage="Age feild can't be empty" ForeColor="#87A310" SetFocusOnError="True" CssClass="auto-style12" ></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtAge" ErrorMessage="The Age Shoud be 18 and above" ForeColor="#87A310" MaximumValue="99" MinimumValue="18" SetFocusOnError="True" CssClass="auto-style15"></asp:RangeValidator>
                </span>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">Aadhar Number</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtAadhar" runat="server" autocomplete="off" CssClass="txtstyle1" Width="202px" MaxLength="12"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"  ControlToValidate="txtAadhar" CssClass="auto-style12" ErrorMessage="Please enter the Aadhar number" ForeColor="#87A310" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <span class="auto-style2">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            </td>
        </tr>
        <tr><td class="auto-style6"><br>
            <span class="auto-style2">
            <br />
            </span>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            Yes i accept all the<a href="Terms_and_Conditions.aspx"> Terms And Conditions</a> If i Wants to sell my property<br />
            <br></td></tr>
            <tr>
                <td class="auto-style6">
                <asp:linkbutton runat="server" ID="linkbtn"></asp:linkbutton>
            </td>

            </tr>
        <tr>
            <td class="auto-style6"> 
                <asp:Button ID="Button1" runat="server" CssClass="txtstyle3" Text="Login Here" Visible="False" OnClick="Button1_Click" />
            </td>
            <td>

                <asp:Button ID="btnRegister" runat="server" CssClass="txtstyle3" Text="Register" OnClick="btnSubmit_Click" Height="27px" />&nbsp;<asp:Button ID="btnClear" runat="server" CssClass="txtstyle3" Text="Clear" height="27px"/>&nbsp;<br />

            </td>

           
            </tr> 
            <tr>
                <td class="auto-style23" colspan="2">
                    <br />
                    Already Have an Account? Login <a href="Login.aspx">Login here</a></td>
                </tr>
        
    </table>
   </div>
</asp:Content>

