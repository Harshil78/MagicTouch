<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="UserSide_ChangePass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
      <form id="form1" runat="server">
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>


<asp:updatepanel ID="Updatepanel1" runat="server">
<ContentTemplate>

    <div>
     <div class="modal-header">
            <h4 class="modal-tittle" style="color:red">Change Password</h4>
        </div>
        <div class="modal-body">
        <div class="container-fluid" >
      
                 <div class="form-container">
                    <div >
                             
                          <asp:label ID="LblOldPass"  runat="server" text="Old Password">Old Password:-</asp:label>
                             <asp:TextBox ID="TxtOldPass"  placeholder="Enter Old Password" TextMode="Password" class="form-control" runat="server" Required></asp:TextBox>
               
                        <br />  <asp:label ID="LblNewPass"  runat="server" text="New PassWord">New Password:-</asp:label>
                             <asp:TextBox ID="TxtNewPass"  placeholder="Enter New Password"  TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" class="form-control" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters" runat="server" Required></asp:TextBox>
               
                         <br />       <asp:label ID="LblconPass"  runat="server" text="Confirm Password">Confirm Password:-</asp:label>
                             <asp:TextBox ID="TxtconPass"  placeholder="Enter Confirm Password" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" class="form-control" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters" runat="server" Required></asp:TextBox>
               
                           <br />   <asp:Button ID="BtnChangePass" class="btn btn-success" runat="server" Text="Change Password"  onclick="BtnChangePass_Click"     />
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
