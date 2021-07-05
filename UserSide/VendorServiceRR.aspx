<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="VendorServiceRR.aspx.cs" Inherits="UserSide_VendorServiceRR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <script src="../bootstrap-4.3.1-dist/js/datatables.js" type="text/javascript"></script>
    <link href="../bootstrap-4.3.1-dist/css/datatables.css" rel="stylesheet" type="text/css" />
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
         });
</script>
<style>
    
    th
    {
        text-align:center;
        
    }
    td
    {
    text-align:center;
    font-family:Arial;
    font-size:18px;
    font-variant:small-caps;
    }
    
</style>
<div  style="margin-top:150px">
					<div class="banner_content text-center">
						    
						<h2>Vendor Service Rate & Review</h2>
					</div>
				</div>
   
        	<div class="container">
            <asp:Repeater ID="Repeater1" runat="server" >
                    <ItemTemplate>
        		<div class="welcome_inner row">
        			<div class="col-lg-5">
                    <br />
        				<div class="welcome_img">
        					<img class="img-fluid" src='../Images/<%# Eval("Image") %>' height="200px" width="150px" alt="">
                             <br /><br /><h3 >Vendor Service Name : <%# Eval("VendorServiceName") %></h3>
        				</div>
                        <br />
                        <asp:Label ID="LblRate" runat="server" Text=""></asp:Label>
        			</div>
        			</div>
        					
                            
                    </ItemTemplate>

                    </asp:Repeater>
                    <div class="col-lg-6 offset-lg-1">
                    Average Rating : <asp:Label ID="lblavg" runat="server"></asp:Label><br /><br />

                            <asp:DropDownList ID="ddRate" runat="server" class="form-control" required style="color:#f08930;" >
                            <asp:ListItem Value="1">⭐️</asp:ListItem>
                            <asp:ListItem Value="2">⭐️⭐️</asp:ListItem>
                            <asp:ListItem Value="3">⭐️⭐️⭐️</asp:ListItem>
                            <asp:ListItem Value="4">⭐️⭐️⭐️⭐️</asp:ListItem>
                            <asp:ListItem Value="5">⭐️⭐️⭐️⭐️⭐️</asp:ListItem>
                            </asp:DropDownList><br />
                         
        				 <asp:DropDownList ID="DDReview" runat="server" class="form-control" required style="color:#f08930;" >
                         
                         
                         <asp:ListItem >Select Your Experience </asp:ListItem>
                           <asp:ListItem >Excellent</asp:ListItem>
                            <asp:ListItem >Satisfy</asp:ListItem>
                            <asp:ListItem >Not Satisfy</asp:ListItem>
                            <asp:ListItem >Very Bad</asp:ListItem>
                           </asp:DropDownList>
                        
                        <br />	<asp:Button ID="btnRate" class="btn btn-success" runat="server" Text="Submit" onclick="btnRate_Click"></asp:Button>
                            
        				</div>
                         </div><br />
                        

                <div style="margin-left:100px">
                 <table id="example" class="" style="width:90%">
                                <thead >
                                <tr>
                                    <th >Vendor Service Name</th>
                                    <th>User Name</th>
                                    <th>Review Date</th>
                                    <th>Review</th>

                                </tr>

                                </thead>
                <asp:Repeater ID="RepReview" runat="server">
                    <ItemTemplate>
                    
                           
                                <tbody>
                                <tr>
                                    <td><%# Eval("VendorServiceName") %></td>
                                    <td><%# Eval("UserName") %></td>
                                    <td><%# Eval("ReviewDate") %></td>
                                    <td><%# Eval("Review") %></td>
                                    </tr>
                                </tbody>
                            

                    </ItemTemplate>
                </asp:Repeater>
                  </table>                         
            </div>
       
    
</asp:Content>

