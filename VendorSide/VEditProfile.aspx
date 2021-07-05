<%@ Page Title="" Language="C#" MasterPageFile="~/VendorSide/VendorMaster.master" AutoEventWireup="true" CodeFile="VEditProfile.aspx.cs" Inherits="VendorSide_VEditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>Edit Profile</h2>
  <div class="container-fluid   " >
      
               
                    <div >
                             
                         <label class="control-label">Vendor Name:</label>
                        <asp:TextBox ID="TxtUserName" placeholder="Enter User Name"  class="form-control" runat="server"></asp:TextBox>
                    
                      <br /><label class="control-label">Address:</label>
                       <asp:TextBox ID="TxtAddress"  placeholder="Enter Address" class="form-control" runat="server"></asp:TextBox> 
                     
           
                    
                        <br /> <label class="control-label">Contact:</label>
                          <asp:TextBox ID="TxtContact"  placeholder="Enter Contact" pattern="[0-9]{10}" title="Please Correct Contact Number" class="form-control" runat="server"></asp:TextBox>
                    
                     <br /> <label class="control-label">Organization Name:</label>
                          <asp:TextBox ID="TxtOrgName"  placeholder="Enter Organization Name" class="form-control" runat="server"></asp:TextBox>
                          
                       
                             
                  

                 
                    
                 <br /><label class="control-label">City:</label>
                      <asp:DropDownList ID="DDCity" class="form-control" runat="server">
                        
                        </asp:DropDownList>
                  

                          
                      
                    <br />  <label class="control-label">Profile Picture:</label>
                         <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" />
                    
                    <br /><asp:Image ID="Image1" runat="server" Width="150" Height="150" /><br />
                  <br /><asp:Button ID="BtnUpdate" class="form-control btn btn-primary" style="font-size:19px" runat="server" Text="Update"   onclick="BtnUpdate_Click"     />
                    
                         
                 
             
                 </div>
                 
                 
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

