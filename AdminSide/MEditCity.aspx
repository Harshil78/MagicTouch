<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MEditCity.aspx.cs" Inherits="AdminSide_MEditCity" %>

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
            <h4 class="modal-tittle">Edit City</h4>
        </div>
        <div class="modal-body">
               <div class="form-container">
                      
                      <asp:label ID="LblStateid"  runat="server" text="Stateid">Stateid:-</asp:label>
                         <asp:DropDownList ID="DDState" class="form-control" runat="server" required>
                     </asp:DropDownList><br />
               
                
                          <asp:label ID="LblCity"  runat="server" text="City">City Name:-</asp:label>
                             <asp:TextBox ID="TxtCityName"  placeholder="Enter City Name" class="form-control" runat="server" Required></asp:TextBox>
               
                 </div>
                 <div>
                            <br />
                           <asp:Button ID="BtnEdit" class="btn btn-success"  runat="server" Text="Edit" onclick="BtnEdit_Click"    />
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
