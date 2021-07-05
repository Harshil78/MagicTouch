<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMaster.master" AutoEventWireup="true" CodeFile="UserLogIn.aspx.cs" Inherits="Visitor_UserLogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
	<title>User Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../images/favicon.ico"/>
    
<!--===============================================================================================-->
	
   
<!--===============================================================================================-->
	
   
<!--===============================================================================================-->
	
    <link href="../bootstrap-4.3.1-dist/css/animate.css" rel="stylesheet" type="text/css" />
<!--===============================================================================================-->	
	
    <link href="../bootstrap-4.3.1-dist/css/hamburgers.min.css" rel="stylesheet" type="text/css" />
<!--===============================================================================================-->
	
    <link href="../bootstrap-4.3.1-dist/css/select2.min.css" rel="stylesheet" type="text/css" />
<!--===============================================================================================-->
	
    
     <link href="util.css" rel="stylesheet" type="text/css" />
    
    <link href="main.css" rel="stylesheet" type="text/css" />
<!--===============================================================================================-->
</head>
<body>
	
	<div class="" >
		<div class="container-login100" >
			<div class="wrap-login100" style=" margin-top:80px;">
				<form class="login100-form validate-form">
					<span class="login100-form-title">
						User Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						
                        <asp:TextBox  ID="TxtUserName" TextMode="Email" class="input100" placeholder="Enter Email" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						 <asp:TextBox  ID="TxtPassword" TextMode="Password" class="input100" placeholder="Enter Password" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                        
					</div>
                    <div class="wrap-input100 validate-input" style="margin-left:50px">
						 <asp:CheckBox ID="RememberMe" class="checkbox" runat="server" />
								<span> Remember me ?</span> 
                        
					</div>
					
					<div class="container-login100-form-btn">
						
                        <asp:Button ID="BtnLogin" class="login100-form-btn" runat="server" Text="LogIn"    onclick="BtnLogin_Click" />
					</div>

					<div class="text-center p-t-12" >
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="ForgotPass.aspx">
							Username / Password?
						</a>
					</div>

					<div class="text-center " style="margin-top:50px;">
						<a class="txt2" style="margin:130px" href="UserRegister.aspx">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
    <script src="../bootstrap-4.3.1-dist/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<!--===============================================================================================-->
	
    <script src="../bootstrap-4.3.1-dist/js/popper.js" type="text/javascript"></script>
	
    <script src="../bootstrap-4.3.1-dist/js/bootstrap.min.js" type="text/javascript"></script>
<!--===============================================================================================-->
	
    <script src="../bootstrap-4.3.1-dist/js/select2.min.js" type="text/javascript"></script>
<!--===============================================================================================-->
	
    <script src="../bootstrap-4.3.1-dist/js/tilt.jquery.min.js" type="text/javascript"></script>
	<script >
	    $('.js-tilt').tilt({
	        scale: 1.1
	    })
	</script>
<!--===============================================================================================-->
    <script src="../bootstrap-4.3.1-dist/js/main.js" type="text/javascript"></script>
</body>
</asp:Content>

