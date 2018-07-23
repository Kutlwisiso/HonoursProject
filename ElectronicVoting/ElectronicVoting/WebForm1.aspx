<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ElectronicVoting.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="HomePage.aspx"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                        <li class="active">Register</li>
                    </ul>
                </div>
            </div>
        </div>

    </section>

    <div class="container">
        <div class="row ">
            <div class="top-content" style="width: 500px; padding: 8% 0 0; margin: auto">
                <div class="form" style="position: relative; z-index: 1; background: #FFFFFF; max-width: 500px; margin: 0 auto 100px; padding: 45px; text-align: center; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24)">
                    <asp:Label ID="lblname" runat="server" Text="First Name :"></asp:Label>
                    <asp:TextBox ID="txtname" runat="server" CssClass="form-control" required="required"></asp:TextBox>

                    <asp:Label ID="lblsurmane" runat="server" Text="Last Name :"></asp:Label>
                    <asp:TextBox ID="txtsurname" runat="server" CssClass="form-control" required="required"></asp:TextBox>

                    <asp:Label ID="lblID" runat="server" Text="ID Number :"></asp:Label>
                    <asp:TextBox ID="txtID" runat="server" CssClass="form-control" required="required"></asp:TextBox>


                    <asp:Label ID="lblPassword" runat="server" Text="Password :"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" required="required"></asp:TextBox><br />

                    <asp:Label ID="lblConfirm" runat="server" Text="Re-enter Password :"></asp:Label>
                    <asp:Label ID="lblErrorMessage" runat="server" Text="message" ForeColor="Red" Visible="false"></asp:Label>
                    <asp:TextBox ID="txtconfirm" runat="server" CssClass="form-control" TextMode="Password" required="required"></asp:TextBox><br />

                    <div class="form-group">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-lg btn-block btn-primary" OnClick="btnRegister_Click" />
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-lg btn-block btn-success" />
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
