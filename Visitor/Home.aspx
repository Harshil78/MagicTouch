<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Visitor_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<body>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="../Images/Slide3.jpg" height="400px" width="100%" alt="Los Angeles">
      <div class="carousel-caption">
        <h2>Birthday</h2>
        <p>We Always With You</p>
      </div>
    </div>

    <div class="item">
      <img src="../Images/Slide1.jpg" height="400px" width="100%" alt="Chicago">
      <div class="carousel-caption">
        <h2>Haldi</h2>
        <p>We Always With You</p>
      </div>
    </div>

    <div class="item">
      <img src="../Images/Slide2.jpg" height="400px" width="100%" alt="New York">
      <div class="carousel-caption">
        <h2>Wedding</h2>
        <p>We Always With You</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="fa-angle-double-left "></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="fa-angle-double-right "></span>
    <span class="sr-only">Next</span>
  </a>
</div>

</body>

</asp:Content>

