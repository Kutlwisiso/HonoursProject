<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ElectronicVoting.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="HomePage.aspx"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                        <li class="active">Sign In</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="bgimg">
        <div class="login-page" style="width: 360px; padding: 8% 0 0; margin: auto">
            <div class="form" style="position: relative; z-index: 1; background: #FFFFFF; max-width: 360px; margin: 0 auto 100px; padding: 45px; text-align: center; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24)">
                <div class="form-group">
                    <asp:TextBox ID="txtID" runat="server" TextMode="Number" CssClass="form-control" placeholder="ID" required="required">
                    </asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" required="required"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblStatus" runat="server" Text="" ForeColor="Red" Visible="False"></asp:Label>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn btn-block btn-primary" />
                </div>
                <p class="message" style="font-size: medium"><a href="ForgotPassword.aspx" style="color: black">Recover Password</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="register.aspx" style="color: black">Create account</a></p>

            </div>
        </div>
    </div>
</asp:Content>
