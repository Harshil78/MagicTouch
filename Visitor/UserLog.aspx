<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMaster.master" AutoEventWireup="true" CodeFile="UserLog.aspx.cs" Inherits="Visitor_UserLog" %>

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
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						
                        <asp:Button ID="BtnLogin" class="login100-form-btn" runat="server" Text="LogIn" />
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="ForgotPass.aspx">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="UserRegister.aspx">
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
	>
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

