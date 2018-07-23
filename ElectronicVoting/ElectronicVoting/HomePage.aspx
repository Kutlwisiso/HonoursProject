<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ElectronicVoting.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="featured">
        <!-- start slider -->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Slider -->
                    <div id="main-slider" class="flexslider">
                        <ul class="slides">
                            <li>
                                <img src="img/slides/image3.jpg" alt="" />
                                <div class="flex-caption">
                                    <h3>First Election</h3>
                                </div>
                            </li>
                            <li>
                                <img src="img/slides/image2.png" alt="" />
                                <div class="flex-caption">
                                    <h3>Modern Election</h3>
                                </div>
                            </li>

                        </ul>
                    </div>
                    <!-- end slider -->
                </div>
            </div>
        </div>
    </section>

    <section class="callaction">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="big-cta">
                        <div class="cta-text">
                            <h2>Get the latest technology to take control back into your hands</h2>
                            <p>
                                Dont stay in silence or regret of what you could have done with your power to vote! Use your rights
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
