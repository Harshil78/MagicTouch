<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="ServicesDetails.aspx.cs" Inherits="UserSide_ServicesDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<body>

  
         <div class="container" style="margin-top:150px">
        
             <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>   
                      <div class="col-md-4 col-sm-6">
					<div class="speaker" data-toggle="modal" data-target="#speaker-modal-1">
						<div class="speaker-img">
							<img src="../Images/<%# Eval("Image") %>" height="470px" alt="Not Found">
						</div>
						<div class="speaker-body">
							<%--<div class="speaker-social">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa fa-linkedin"></i></a>
							</div>--%>
							<div class="speaker-content">
								<h2><%# Eval("ServiceName") %></h2>
								<span></span>
                                 <a href="ViewServices.aspx?Serviceid=<%# Eval("Serviceid") %>"  class="form-control btn btn-success">View More</a> 
							</div>
						</div>
					</div>
				</div>
                
                    </ItemTemplate>

             </asp:Repeater>
    
               
                        
                 
            </div>
</body>
</asp:Content>

