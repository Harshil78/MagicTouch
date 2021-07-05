<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="SelectEvent.aspx.cs" Inherits="UserSide_SelectEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style>
    *{
       color:Black;
      }

    .bg{
         width: 100%;
        height: 100vh;
        }
    .form-container{
        border:0px solid #fff;
        padding:15px 60px;
        margin-top:14vh;
        -webkit-box-shadow: 1px 4px 26px 11px rgba(240,14,37,1);
        -moz-box-shadow: 1px 4px 26px 11px rgba(240,14,37,1);
          box-shadow: 1px 4px 26px 11px #aaa;
    }
    </style>
  
<div class="container-fluid " style="margin-top:0px">
   
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-sm-4 col-xs-12 ">
            <div class="form-container">
                <h2>Event </h2>
                    
                     <div class="form-group">
                          <asp:label ID="LblEventName" runat="server" text="EventName">Event Name:-</asp:label>
                             <asp:TextBox ID="TxtEventName" placeholder="Enter Event Name" class="form-control z-depth-10 rounded" runat="server" Required></asp:TextBox>
                      
                           
                      </div>
                      <div class="form-group">
                             <asp:label ID="LblEventDate" runat="server" text="Date Of Event">Date Of Event:-</asp:label>
                             <asp:TextBox ID="TxtDate"  type="date"   placeholder="Enter Date" class="form-control  z-depth-10 rounded " runat="server" Required></asp:TextBox>
                             
                      </div>

                         <div class="form-group">
                       <asp:label ID="Label1" runat="server" text="Country">Country:-</asp:label>
                           <asp:DropDownList ID="DDCountry" class="form-control  z-depth-10 rounded"  AutoPostBack="true"  runat="server" onselectedindexchanged="DDCountry_SelectedIndexChanged">
                           </asp:DropDownList>
                      </div>

                         <div class="form-group">
                       <asp:label ID="Label2" runat="server" text="State">State:-</asp:label>
                           <asp:DropDownList ID="DDState" class="form-control  z-depth-10 rounded"  AutoPostBack="true" runat="server" onselectedindexchanged="DDState_SelectedIndexChanged">
                           </asp:DropDownList>
                      </div>
                      
                       <div class="form-group">
                       <asp:label ID="LblCity" runat="server" text="City">City:-</asp:label>
                           <asp:DropDownList ID="DDCity"  AutoPostBack="true" class="form-control  z-depth-10 rounded" runat="server">
                           </asp:DropDownList>
                      </div>
                       <div class="form-group">
                             <asp:label ID="LblVenue" runat="server" text="Venue">Venue:-</asp:label>
                             <asp:TextBox ID="TxtVenue"   placeholder="Enter Venue" class="form-control z-depth-10 rounded" runat="server" Required></asp:TextBox>
                          
                      </div>
                        <div class="form-group">
                             <asp:label ID="LblLocation" runat="server" text="Location">Location:-</asp:label>
                             <asp:TextBox ID="TxtLocation"   placeholder="Enter Location" class="form-control z-depth-10 rounded" runat="server" Required></asp:TextBox>
                          
                      </div>
                     <asp:Button ID="Submit" class="btn btn-success" runat="server" Text="Submit" onclick="Submit_Click"  />
                 </div>     
              </div>
           <div class="col-md-4 col-sm-4 col-xs-12"></div>
     </div>
</div>
 
</asp:Content>

