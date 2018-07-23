<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="QRCodeGenerator.aspx.cs" Inherits="ElectronicVoting.QRCodeGenerator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="inner-headline">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="HomePage.aspx"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                        <li class="active">QR Code</li>
                    </ul>
                </div>
            </div>
        </div>

    </section>

    <section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
                        <asp:Button ID="btnGenerator" runat="server" Text="Generate QR" CssClass="btn btn-primary" OnClick="btnGenerator_Click" />
                        <br /><br />
                        <asp:PlaceHolder ID="PHQRCode" runat="server"></asp:PlaceHolder>
                        <br />
                        <asp:Image ID="QRImage" runat="server" height="150" width="150"/>
                        </div>
                    </div>
                </div>
        </section>
     
</asp:Content>
