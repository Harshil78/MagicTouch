<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="UserSide_EditProfile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
      <form id="form1" runat="server">
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>


<asp:updatepanel ID="Updatepanel1" runat="server">
<ContentTemplate>

    <div>
     <div class="modal-header">
            <h4 class="modal-tittle">Update Profile</h4>
        </div>
        <div class="modal-body">
        <div class="container-fluid" >
      
               
                    <div >
                             
                         <label class="control-label">User Name:</label>
                        <asp:TextBox ID="TxtUserName" placeholder="Enter User Name"  class="form-control" runat="server"></asp:TextBox>
                    
                      <br /><label class="control-label">Address:</label>
                       <asp:TextBox ID="TxtAddress"  placeholder="Enter Address" class="form-control" runat="server"></asp:TextBox> 
                     
           
                    
                        <br /> <label class="control-label">Contact:</label>
                          <asp:TextBox ID="TxtContact"  placeholder="Enter Contact" pattern="[0-9]{10}" title="Please Correct Contact Number" class="form-control" runat="server"></asp:TextBox>
                    
                          
                       
                             
                  <br />  <label class="control-label">Gender:</label>
                      
                          <asp:DropDownList ID="DDGender"  class="form-control" runat="server">
                            <asp:ListItem  >Select Gender</asp:ListItem>      
                            <asp:ListItem >Male</asp:ListItem>      
                            <asp:ListItem >Female</asp:ListItem>      

                        </asp:DropDownList> 

                 <br /><label class="control-label">Country:</label>
                      <asp:DropDownList ID="DDCountry" AutoPostBack="true" Readonly class="form-control" runat="server">
                        
                        </asp:DropDownList>
                        
                        <br /><label class="control-label">State:</label>
                      <asp:DropDownList ID="DDState" AutoPostBack="true" Readonly class="form-control" runat="server">
                        
                        </asp:DropDownList>
                    
                 <br /><label class="control-label">City:</label>
                      <asp:DropDownList ID="DDCity" AutoPostBack="true" class="form-control" runat="server">
                        
                        </asp:DropDownList>
                  

                          
                      
                    <br />  <label class="control-label">Profile Picture:</label>
                         <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" />
                    
                    <br /><asp:Image ID="Image1" runat="server" Width="150" Height="150" /><br />
                  <br /><asp:Button ID="BtnUpdate" class="form-control btn btn-primary" style="font-size:19px" runat="server" Text="Update"   onclick="BtnUpdate_Click"  />
                    
                         
                 
             
                 </div>
                 
                 
    </div>
                
        
        <div class="modal-footer">
             <button type="button" class="btn btn-danger " data-dismiss="modal">Close</button>
     </div>
    
     
    </div>
    </ContentTemplate>
</asp:updatepanel>

    </form>
</body>
</html>
