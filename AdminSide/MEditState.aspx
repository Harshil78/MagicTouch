<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MEditState.aspx.cs" Inherits="AdminSide_MEditState" %>

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
            <h4 class="modal-tittle">Edit Country</h4>
        </div>
        <div class="modal-body">
               <div class="form-container">
                       <h4> Country Name:-</h4> 
                     <asp:DropDownList ID="DDCountry" class="form-control dropdown" runat="server" required>
                     </asp:DropDownList><br />
                        <%--  <asp:label ID="LblState" class="w-25 label-control" runat="server" text="State Name">State Name:-</asp:label>--%>
                            <h4 style="margin-left:1px">State Name:-</h4>
                             <asp:TextBox ID="TxtStateName"  placeholder="Enter State Name" class="form-control" runat="server" Required></asp:TextBox>
                 </div>
                 <div>
                            <br />
                           <asp:Button ID="BtnEdit" class="btn btn-success"  runat="server" Text="Edit" OnClick="BtnEdit_click"   />
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
