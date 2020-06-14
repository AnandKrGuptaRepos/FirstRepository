<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="Admin_AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .background{
            background-image:url("images/background.jpg");
        }
         .auto-style1 {
             text-decoration: underline;
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="background">
     <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Admin Dashboard</h2>
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">

                </div>
                <hr />
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-4">
                        <label>Click to Add Property Details </label>
&nbsp;<a href="PropertyInfo.aspx" target="_blank" class="btn btn-danger btn-lg btn-block">Add Property Details</a>
                    </div>
                </div>
                <hr />
                <!-- /. ROW  -->


                <div class="row">
                    <div class="col-md-4">
                        <h5 class="auto-style1">Real estate Management system</h5>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Home</a>
                            </li>
                            <li class=""><a href="#profile" data-toggle="tab">Profile</a>
                            </li>
                            <li class="">&nbsp;</li>

                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="home">
                                <h4>Home Tab</h4>
                                <p>
                                   <b>Hello Admin</b><br/>Welcome to Real Estate Management System.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="profile">
                                <h4>Profile Tab</h4>
                                <p>
                                    <b>Hello Admin</b><br/>Welcome to our Profile, you have the full control over this Website. 
                                </p>

                            </div>
                            

                        </div>
                    </div>

                </div>
                <!-- /. ROW  -->
                <hr />
                  <div class="row">
                    <div class="col-md-12">
                        <h5>Information</h5>
                            Admin have the full control over this website. Admin can see the user&#39;s Profile, the seller&#39;s Profile edit or delete Property at any time or even the Sellers too. Admin can access the Rent and booking details as well.

                    </div>
                </div>
                <!-- /. ROW  -->

            </div>
            <!-- /. PAGE INNER  -->
        </div>
         </div>
</asp:Content>

