<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditEvent.aspx.cs" Inherits="UserSide_EditEvent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
        <div class="modal-header">
            <h4 class="modal-tittle">Vendor Registration</h4>
        </div>
     <div class="modal-body">
            
       <div class="container-fluid" >
                <label class="control-label">Event Name:</label>
                        <asp:TextBox ID="TxtEventName"  class="form-control" runat="server"></asp:TextBox>
                    
                        
                    
                        <br />  <label class="control-label">Event Date:</label>
                      
                       <asp:TextBox ID="TxtEventDate" type="date"   class="form-control" runat="server"></asp:TextBox> 
                     
           
                    
                        <br />  <label class="control-label">Event Type:</label>
                          <asp:TextBox ID="TxtType"   class="form-control" runat="server"></asp:TextBox>
                    
                          
                      <br />  <label class="control-label">City:</label>
                      <asp:DropDownList ID="DDCity" class="form-control" runat="server">
                        
                        </asp:DropDownList>
                  
                        
                        <br />  <label class="control-label">Venue</label>      
                      <asp:TextBox ID="TxtVenue"  class="form-control" runat="server"></asp:TextBox>
                   
                             
                      <br /> <label class="control-label">Location:</label>
                        <asp:TextBox ID="TxtLocation"   class="form-control" runat="server"></asp:TextBox>
                    

                 
                    
                     
                  

                    
                    
                    <br />    <asp:Button ID="btnUpdate" class="form-control btn btn-primary" style="font-size:19px" runat="server" Text="Update" />
                    
            </div>
       
      </div>
     
   
        <div class="modal-footer">
             <button type="button" class="btn btn-danger " data-dismiss="modal">Close</button>
     </div>
    </form>
</body>
</html>
