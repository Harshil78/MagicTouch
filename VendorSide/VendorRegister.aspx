<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendorRegister.aspx.cs" Inherits="VendorSide_VendorRegister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>

<body>
    <form id="form1" runat="server">
        <div class="modal-header">
            <h4 class="modal-tittle">Vendor Registration</h4>
        </div>
     <div class="modal-body">
            
       <div class="container" >
   
                      
                      <br /> <label class="control-label">Vendor Name:</label>
                        <asp:TextBox ID="TxtVendorName" placeholder="Enter User Name"  class="form-control" runat="server" required></asp:TextBox>
                    
                        
                    
                        <br />  <label class="control-label">Address:</label>
                      
                       <asp:TextBox ID="TxtAddress"  placeholder="Enter Address" class="form-control" runat="server" required></asp:TextBox> 
                     
           
                    
                        <br />  <label class="control-label">Contact:</label>
                          <asp:TextBox ID="TxtContact"  placeholder="Enter Contact" pattern="[0-9]{10}" title="Please Correct Contact Number" class="form-control" runat="server" required></asp:TextBox>
                    
                          
                       <br />   <label class="control-label">Email:</label>
                         <asp:TextBox ID="TxtEmail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please Enter Email In Proper Manner"  placeholder="Enter Email" class="form-control" runat="server" required></asp:TextBox>
                    
                  
                        
                        <br />  <label class="control-label">Password:</label>      
                      <asp:TextBox ID="TxtPassword" TextMode="Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Please Enter Password In Proper Manner"   placeholder="Enter Password" class="form-control" runat="server"  ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters" required></asp:TextBox>
                   
                             
                      <br /> <label class="control-label">Organization Name:</label>
                        <asp:TextBox ID="TxtOrgName" placeholder="Enter Organization Name"  class="form-control" runat="server" required></asp:TextBox>
                    

                 
                    
                     <br />  <label class="control-label">City:</label>
                      <asp:DropDownList ID="DDCity" class="form-control" runat="server">
                        
                        </asp:DropDownList>
                  

                          
                      <br /> <label class="control-label">Security Question:</label>
                        <asp:DropDownList ID="DDQue" class="form-control" runat="server">
                            <asp:ListItem>Select Question</asp:ListItem>
                            <asp:ListItem>What is your pet name?</asp:ListItem>
                            <asp:ListItem>What is your childhood name?</asp:ListItem>
                            <asp:ListItem>What is your best name?</asp:ListItem>
                            <asp:ListItem>What is your first school name?</asp:ListItem>
                            <asp:ListItem>What is your favourite actor/actress name?</asp:ListItem>

                        </asp:DropDownList>

                    
                       
                     <br />  <label class="control-label">Security Answer:</label>
                      <asp:TextBox ID="TxtAns" placeholder="Enter Security Answer"  class="form-control" runat="server" required></asp:TextBox>
                  

                      
                     <br />  <label class="control-label">Profile Picture:</label>
                         <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" required />
                    
                    
                    
                    <br />    <asp:Button ID="BtnAdd" class="form-control btn btn-primary" style="font-size:19px" runat="server" Text="Sign In" onclick="BtnAdd_Click" />
                    
            </div>
       
      
     
   
        <div class="modal-footer">
             <button type="button" class="btn btn-danger " data-dismiss="modal">Close</button>
     </div>
    </form>
</body>
</html>
