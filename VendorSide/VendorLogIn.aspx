<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendorLogIn.aspx.cs" Inherits="VendorSide_VendorLogIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vendor</title>
    <link href="VendorLogIn.css" rel="stylesheet" type="text/css" />
   <link href="../bootstrap-4.3.1-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   <script src="../AdminSide/files/bower_components/jquery/js/jquery.min.js" type="text/javascript"></script>
   
    <script src="../bootstrap-4.3.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
  
  
    
    </head>
<body>
	<!-- main -->
	<div class="main">
		<h1>Vendor</h1>
		<div class="main-w3lsrow">
			<!-- login form -->
			<div class="login-form login-form-left"> 
				<div class="agile-row">
					<h2>Login Form</h2> 
					<div class="login-agileits-top"> 	
					<form id="form1" runat="server">
							<p>Email </p>
                             <asp:TextBox ID="TxtUserName" class="name"  placeholder="Enter Email" required runat="server"></asp:TextBox>
							<p>Password</p>
                              <asp:TextBox ID="TxtPassword" TextMode="Password" class="password" placeholder="Enter Password"  required="" runat="server"></asp:TextBox>
							<label class="anim">
                                <asp:CheckBox ID="RememberMe" class="checkbox" runat="server" />
								<span> Remember me ?</span> 
							</label>
                        <asp:Button ID="BtnLogIn"  runat="server" Text="LogIn" onclick="BtnLogIn_Click" />   
						   
							
					</div> 

                  
					<div class="login-agileits-bottom"> 
						<h6><a href="../VendorSide/VForgotPassword.aspx" >Forgot password?</a></h6>
					</div> 
				</div>
                  
			</div> 
            
                     <ul>
                        <li style="color:White;font-size:30px;">New Vendor?   <a href="VendorRegister.aspx" style="color:White;font-size:25px;" class='li-modal btn btn-outline-success'>Sign Up</a>
                        </li>
                      </ul>
                      <div id="theModal" class="modal fade  ">
                        <div class="modal-dialog">
                          <div class="modal-content">
                          </div>
                        </div>
                     
                      <script>
                          $('.li-modal').on('click', function (e) {
                              e.preventDefault();
                              $('#theModal').modal('show').find('.modal-content').load($(this).attr('href'));
                          });
                      </script> 
		            </div>
         
                 </div>
                
	</form>

	
</body>
</html>
