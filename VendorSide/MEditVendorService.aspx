<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MEditVendorService.aspx.cs" Inherits="VendorSide_MEditVendorService" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
 <form id="form1" runat="server">
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>


<asp:updatepanel ID="Updatepanel1" runat="server">
<ContentTemplate>

    <div>
     <div class="modal-header">
            <h4 class="modal-tittle">Edit Service</h4>
        </div>
        <div class="modal-body">
        <div class="container-fluid" >
      
                 <div class="form-container">
                       
                      <%-- <h4> Vendor Name:-</h4> 
                     <asp:DropDownList ID="DDVendorid" class="form-control" runat="server" >
                     </asp:DropDownList><br />--%>
                     
                        <h4 >Vendor Service Name:-</h4>
                        <asp:TextBox ID="TxtVendorServiceName"  placeholder="Enter Vendor Service Name" class="form-control" runat="server" ></asp:TextBox>

                       <br /> <h4>Service Name:-</h4> 
                     <asp:DropDownList ID="DDServiceid" class="form-control" runat="server" >
                     </asp:DropDownList><br />

                      <h4 >Amount:-</h4>
                        <asp:TextBox ID="TxtAmount"  placeholder="Enter Amount" class="form-control" runat="server"></asp:TextBox>

                       <br />  <h4 >Description:-</h4>
                        <asp:TextBox ID="TxtDesc"  placeholder="Enter Description" class="form-control" runat="server" ></asp:TextBox>


                        <br /> <h4 >Image:-</h4>
                         <asp:Image ID="Image1" runat="server" Width="150" Height="150" /><br />
                    
                          <br /><asp:FileUpload ID="ImageUpload" runat="server" />
                
                 <div>
                            <br />
                           <asp:Button ID="BtnEdit" class="btn btn-success"  runat="server" Text="Edit"  OnClick="BtnEdit_Click" />
             </div>
              </div>
              
             
                 </div>
                 </div>
                 
    </div>
                
        
        <div class="modal-footer">
             <button type="button" class="btn btn-danger " data-dismiss="modal">Close</button>
     </div>
    
     
 
    </ContentTemplate>
</asp:updatepanel>

    </form>
</html>
