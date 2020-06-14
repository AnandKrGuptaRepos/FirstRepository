<%@ Page Title="Home" Language="C#" MasterPageFile="~/RealEstate.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .panel-style
        {
            border-radius:10px 10px 10px 10px;
            padding:10px;
        }
        .txtstyle {
            border-radius:5px;
            background-color:rgba(255,255,255,0.7);
        }
        .auto-style4 {
        width: 75px;
    }
        .auto-style6 {
            float: left;
            width: 277px;
            height: 375px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="wrapper">
    <article class="col1">
        <div id="slider">
            <img src="images/img1.jpg" alt="" title="<strong>Villa Neverland, 2006</strong><span>9 rooms, 3 baths, 6 beds, building size: 5000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 600 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img2.jpg" alt="" title="<strong>Villa Lipsum, 2008</strong><span>8 rooms, 4 baths, 4 beds, building size: 4500 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 500 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img3.jpg" alt="" title="<strong>Villa Dolor Sid, 2007</strong><span>11 rooms, 3 baths, 5 beds, building size: 6000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 650 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img4.jpg" alt="" title="<strong>Villa Nemo Enim, 2010</strong><span>5 rooms, 2 baths, 4 beds, building size: 3000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 400 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
            <img src="images/img5.jpg" alt="" title="<strong>Villa Nam Libero, 2003</strong><span>7 rooms, 4 baths, 6 beds, building size: 7000 sq. ft. &nbsp; &nbsp; &nbsp; Price: $ 700 000 &nbsp; &nbsp; &nbsp; <a href='#'>Read more</a></span>">
        </div>
    </article>
    <article class="auto-style6">
        <div class="pad1">
            <%--<h3 class="color1">Find Your Property</h3>
            <div class="row">
                City &amp; State, or Zip:<br>
                <input type="text" class="input" style="width: 169px">
            </div>
            <div class="row_select">
                Search Area:<br>
                <select class="auto-style5">
                    <option>&nbsp;</option>
                    <option>...</option>
                    <option>...</option>
                </select>
            </div>
            <div class="row_select">
                <div class="cols">
                    Price Range:&nbsp; To:<br>
                    <select class="auto-style4">
                        <option>&nbsp;</option>
                        <option>...</option>
                        <option>...</option>
                    </select>&nbsp;&nbsp;&nbsp;&nbsp;
                    <select class="auto-style4" name="D1">
                        <option>&nbsp;</option>
                        <option>...</option>
                        <option>...</option>
                    </select></div>
            </div>
            <div class="row_select">
                <div class="cols">
                    Bedroom(s):&nbsp; Bathroom(s):<br>
                    <select class="auto-style4" name="D3">
                        <option>&nbsp;</option>
                        <option>...</option>
                        <option>...</option>
                    </select>&nbsp;&nbsp;&nbsp;&nbsp;
                    <select class="auto-style4" name="D2">
                        <option>&nbsp;</option>
                        <option>...</option>
                        <option>...</option>
                    </select></div>
            </div>
            <div class="row_select pad_bot1">
                <div class="cols">
                    Radius:<br>
                    <select class="auto-style4">
                        <option>&nbsp;</option>
                        <option>...</option>
                        <option>...</option>
                    </select>&nbsp;&nbsp; <a href="#" class="button">Proposals</a>&nbsp;&nbsp;
                </div>
            </div>
            Know exactly what you want?
            <br>Try our <a href="#">Advanced Search</a>--%>
            <asp:panel runat="server" Height="358px" Width="207px" BackColor="#999999" BorderWidth="1px">
                <br /><br/><asp:Image ID="Image1" runat="server" Height="273px" ImageUrl="~/images/main.jpg" Width="204px" BackColor="White" />
            </asp:panel>
        </div>
    </article>
</div>
</asp:Content>



