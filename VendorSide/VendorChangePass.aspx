<%@ Page Title="" Language="C#" MasterPageFile="~/VendorSide/VendorMaster.master" AutoEventWireup="true" CodeFile="VendorChangePass.aspx.cs" Inherits="VendorSide_VendorChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <h4>Vendor Change Password</h4>
</div><br />
          <div>     
               <div class="form-container">
                
                          <asp:label ID="LblOldPass"  runat="server" text="Old Password">Old PassWord:-</asp:label>
                             <asp:TextBox ID="TxtOldPass" TextMode="Password"  placeholder="Enter Old Password" class="form-control" runat="server" Required></asp:TextBox>
               <br />
                          <asp:label ID="LblNewPass"  runat="server" text="New PassWord">New Password:-</asp:label>
                             <asp:TextBox ID="TxtNewPass" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters"  placeholder="Enter New Password" class="form-control" runat="server" Required></asp:TextBox>
               <br />
                <asp:label ID="LblconPass"  runat="server" text="Confirm Password">Confirm Password:-</asp:label>
                             <asp:TextBox ID="TxtconPass" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters"  placeholder="Enter Confirm Password" class="form-control" runat="server" Required></asp:TextBox>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPass" ControlToValidate="TxtconPass" ErrorMessage="Not Match "></asp:CompareValidator>
                 </div>
                 <div>
                            <br />
                           <asp:Button ID="BtnChangePass" class="btn btn-outline-success"  runat="server" 
                                Text="Change Password" onclick="BtnChangePass_Click"    />
             </div><br />
              </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

