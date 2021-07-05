<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="AdminSide_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title>Admin Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="../bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <link href="AdminLogin.css" rel="stylesheet" type="text/css" />
   
</head>
<body>
<div class="container-fluid bg" >
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12" ></div>
            <div class="col-md-4 col-sm-4 col-xs-12 " >
            <form id="Form1" runat="server" class="form-container" > 
                <h1>Admin LogIn</h1>
                     <div class="form-group">
                          <asp:label ID="LblUsername" runat="server" text="UserName">UserName:-</asp:label>
                             <asp:TextBox ID="TxtUsername" placeholder="Enter Admin UserName" class="form-control z-depth-10 rounded" runat="server" Required></asp:TextBox>
                           
                      </div>
                      <div class="form-group">
                             <asp:label ID="LblPassword" runat="server" text="Password">Password:-</asp:label>
                             <asp:TextBox ID="TxtPassword" TextMode="Password" placeholder="Enter Password" class="form-control z-depth-10 rounded" runat="server" Required></asp:TextBox>
                          
                      </div>
                      <div>
                      <asp:CheckBox ID="RememberMe" runat="server"/>
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label>
                      </div>
                     <asp:Button ID="Submit" class="btn btn-success" runat="server" Text="LogIn" onclick="Submit_Click" />
                      
              </div>
           <div class="col-md-4 col-sm-4 col-xs-12"></div>
     </div>
</div>

    </form>
    </body>
</html>

