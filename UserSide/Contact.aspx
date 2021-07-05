<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="UserSide_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="contact" class="section" style="margin:50px">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
            <div class="section-title" >
					<h3 style="font-size:50px;font-weight:800"><span style="color:Black;">Contact</span> <span style="color:Red;">Us</span></h3>
				</div>
                <div class="col-sm-4">
					<div class="contact">
						<h3>Name</h3>
                        <asp:TextBox ID="TxtName" class="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
					</div>
				</div>
                 <div class="col-sm-4">
					<div class="contact">
						<h3>Email</h3>
                        <asp:TextBox ID="TxtEmail" class="form-control" placeholder="Enter Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please Enter Email In Proper Manner" runat="server"></asp:TextBox>
					</div>
				</div>
                 <div class="col-sm-4">
					<div class="contact">
						<h3>Contact No</h3>
                        <asp:TextBox ID="TxtContact" class="form-control"  placeholder="Enter Contact" pattern="[0-9]{10}" title="Please Correct Contact Number" runat="server"></asp:TextBox>
					</div>
				</div>
                 <div class="col-sm-12">
					<div class="contact">
						<h3>Description</h3>
                        <asp:TextBox id="TxtDesc" TextMode="multiline" class="form-control" placeholder="Enter Description" rows="2" cols="2" runat="server" />
					</div>
				</div>
                 <div class="col-sm-12">
					<div class="contact">
                        <asp:Button ID="BtnSub" class=" btn btn-success" runat="server" Text="Submit"  onclick="BtnSub_Click" />
                        
					</div>
				</div>

				<!-- section title -->
				<div class="section-title" >
					<h3 style="font-size:30px;font-weight:800"><span style="color:Black;">Contact</span> <span style="color:Red;">Details</span></h3>
				</div>
				<!-- /section title -->

				<!-- contact -->
				<div class="col-sm-4" >
					<div class="contact">
						<h3>Address</h3>
						<p>India,Surat</p>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<h3>Phone</h3>
						<a class=" fa fa-phone" href="tel:+917041206200"> 7041206200</a>,<a class=" fa fa-phone" href="tel:+917096892323"> 7096892323</a>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<h3>Email</h3>
						<a class="fa fa-envelope-o" href="mailto:Harshildalal99@icloud.com"> Harshildalal99@icloud.com</a>
					</div>
				</div>
				<!-- /contact -->
                
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->

			</div>
</asp:Content>

