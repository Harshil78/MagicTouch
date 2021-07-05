<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VChangePassword.aspx.cs" Inherits="VendorSide_VChangePassword" %>

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
            <h3>Change Password </h3>   
              <div >
                                <asp:Label ID="LblNewPass" runat="server" Text="New Password"></asp:Label>
                                <asp:TextBox ID="TxtNewPass"  TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" class="form-control" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters" runat="server" required ></asp:TextBox>
                         </div><br />

                         <div >
                                <asp:Label ID="LblCPass" runat="server" Text="Confirm Password"></asp:Label>
                                <asp:TextBox ID="TxtCPass" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters" class="form-control" runat="server" Required></asp:TextBox>
                                <asp:CompareValidator
                                    ID="CompareValidator1" runat="server" Display="Dynamic" ForeColor="Blue" style="font-size:30px;width:60px" ControlToCompare="TxtNewPass" ControlToValidate="TxtCPass" ErrorMessage="Not Match"></asp:CompareValidator>
                         </div>
                   <br />  <asp:Button ID="BtnSubmit" class="btn btn-success" runat="server" Text="Submit" onclick="BtnSubmit_Click"    />
                     
                  
    </form>  
                      
              </div>
           <div class="col-md-4 col-sm-4 col-xs-12"></div>
     </div>
</div>

    </body>
</html>
