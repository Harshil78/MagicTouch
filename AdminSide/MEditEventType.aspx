<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MEditEventType.aspx.cs" Inherits="AdminSide_MEditEventType" %>

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
            <h4 class="modal-tittle">Edit Event Type</h4>
        </div>
        <div class="modal-body">
        <div class="container-fluid" >
      
                 <div class="form-container">
                    <div >
                             <asp:label ID="LblEventType" class="" runat="server" text="Event Type Name">Event Type Name:-</asp:label><br />
                             <asp:TextBox ID="TxtEventTypeName"  placeholder="Enter Event TypeName" class="form-control" runat="server" Required></asp:TextBox><br />
                              <asp:Image ID="Image1" runat="server" Width="150" Height="150" /><br />
                       
                             <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" />
                             <br />
                              <asp:Button ID="BtnEdit" class="btn btn-success"  runat="server" Text="Edit"  OnClick="BtnEdit_Click" />
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
