<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VForgotPassword.aspx.cs" Inherits="VendorSide_VForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Forgot Password</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="../bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
     <style>
    *{
       color:Black;
      }

      body
      {
          background: linear-gradient(to left, #333300 13%, #996633 100%);
      }
   
    .form-container{
        border:0px solid #fff;
        padding:20px 60px;
        margin-top:20vh;
        -webkit-box-shadow: 1px 4px 26px 11px rgba(240,14,37,1);
        -moz-box-shadow: 1px 4px 26px 11px rgba(240,14,37,1);
          box-shadow: 1px 4px 10px 11px #aaaa;
          background-color:#FC8787 ;
    }
    </style>
</head>
<body >

<div class="container-fluid ">
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-sm-4 col-xs-12 ">
            <form id="Form1" runat="server" class="form-container"> 
               
                <h2>Forgot Password </h2>
                         <div >
                                <asp:Label ID="LblEmail" runat="server" Text="Email"></asp:Label>
                                <asp:TextBox ID="TxtEmail" class="form-control" runat="server"></asp:TextBox>
                         </div>
                   <br />  <asp:Button ID="BtnSubmit" class="btn btn-success" runat="server" Text="Submit" onclick="BtnSubmit_Click"    />
                     
                  
    </form>  
                      
              </div>
           <div class="col-md-4 col-sm-4 col-xs-12"></div>
     </div>
</div>

    </body>
</html>
