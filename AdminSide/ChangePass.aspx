<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="AdminSide_ChangePass" %>

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
            <h4 class="modal-tittle">Change Password</h4>
        </div>
        <div class="modal-body">
               <div class="form-container">
                      
                     
                
                          <asp:label ID="LblOldPass"  runat="server" text="Old Password">Old PassWord:-</asp:label>
                             <asp:TextBox ID="TxtOldPass"  placeholder="Enter Old Password" class="form-control" runat="server" Required></asp:TextBox>
               
                          <asp:label ID="LblNewPass"  runat="server" text="New PassWord">New Password:-</asp:label>
                             <asp:TextBox ID="TxtNewPass"  placeholder="Enter New Password" class="form-control" runat="server" Required></asp:TextBox>
               
                <asp:label ID="LblconPass"  runat="server" text="Confirm Password">Confirm Password:-</asp:label>
                             <asp:TextBox ID="TxtconPass"  placeholder="Enter Confirm Password" class="form-control" runat="server" Required></asp:TextBox>
               
                 </div>
                 <div>
                            <br />
                           <asp:Button ID="BtnChnagePass" class="btn btn-success"  runat="server" Text="Change Password"   />
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
