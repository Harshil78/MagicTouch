<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MEditService.aspx.cs" Inherits="AdminSide_MEditService" %>

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
            <h4 class="modal-tittle">Edit Service</h4>
        </div>
        <div class="modal-body">
        <div class="container-fluid" >
      
                 <div class="form-container">
                    <div >
                          <asp:label ID="LblService" class="" runat="server" text="Service Name">Service Name:-</asp:label>
                             <asp:TextBox ID="TxtServiceName"  placeholder="Enter Service Name" class="form-control" runat="server"></asp:TextBox>
                             <asp:Image ID="Image1" runat="server" Width="150" Height="150" /><br />
                        <asp:label ID="Image" class="" runat="server" text="Image">Image:-</asp:label>
                             <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" />
                 </div>
                 
                       <br />    <asp:Button ID="BtnEdit" class="btn btn-success"  runat="server" Text="Edit"  OnClick="BtnEdit_Click" />
            
              </div>
              
             
                 </div>
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
