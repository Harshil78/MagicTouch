<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="EventHistory.aspx.cs" Inherits="UserSide_EventHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
   
    h1,h3,h4,h5,h6
    {
        color:Red;
    }
     
</style>
<body >
    <h1 style="margin-top:150px; text-align:center ">Past Event Details</h1>
 <div class="container" style="margin-top:50px; "  >
 
  
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              
                   <div class=" col-md-4" style="margin-top:40px;padding:15px 20px;box-shadow: 1px 4px 26px 11px #aaa;background-color:#FEEACE"  >
                <h3><%# Eval("EventName")%> </h3>
                  <h5><span style="color:Black">Event Type: </span><%# Eval("EventTypeName")%> </h3> 
                  <h4><p><span style="color:Black">Event Date: </span><%# Eval("EventDate").ToString()%> </p></h5>
                 <h4><span style="color:Black">Vendor Service: </span> <%# Eval ("VendorServiceName") %> </h4>
                <h4><span style="color:Black">payment Mode: </span><%# Eval ("PaymentMode") %> </h4>  
                 <h4><span style="color:Black">Rs. </span> <%# Eval ("Amount") %> </h4> 
                   <h5><span style="color:Black">Venue: </span><%# Eval ("Venue") %> </h5>
                   <h5><span style="color:Black">City: </span><%# Eval ("CityName") %></h5> 
                   <h5><span style="color:Black">BookDate: </span><%# Eval ("BookDate") %></h5> 

                     <div class="col-md-12">
                        <a href="VendorServiceRR.aspx?VendorServiceid=<%# Eval("VendorServiceid") %>" class="btn btn-primary">Review</a>
                    </div>
                    </div>
                   
              </ItemTemplate>
              </asp:Repeater> 
              </div>             
        

 </body>
</asp:Content>

