<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="Changep.aspx.cs" Inherits="AdminSide_Changep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <h4>Change Password</h4>
</div><br />
          <div>     
               <div class="form-container">
                
                          <asp:label ID="LblOldPass"  runat="server" text="Old Password">Old PassWord:-</asp:label>
                             <asp:TextBox ID="TxtOldPass" TextMode="Password"  placeholder="Enter Old Password" class="form-control" runat="server" Required></asp:TextBox>
               <br />
                          <asp:label ID="LblNewPass"  runat="server" text="New PassWord">New Password:-</asp:label>
                             <asp:TextBox ID="TxtNewPass" TextMode="Password"  placeholder="Enter New Password" class="form-control" runat="server" Required></asp:TextBox>
               <br />
                <asp:label ID="LblconPass"  runat="server" text="Confirm Password">Confirm Password:-</asp:label>
                             <asp:TextBox ID="TxtconPass" TextMode="Password"  placeholder="Enter Confirm Password" class="form-control" runat="server" Required></asp:TextBox>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPass" ControlToValidate="TxtconPass" ErrorMessage="Not Match "></asp:CompareValidator>
                 </div>
                 <div>
                            <br />
                           <asp:Button ID="BtnChangePass" class="btn btn-outline-success"  runat="server" 
                                Text="Change Password" onclick="BtnChnagePass_Click"   />
             </div><br />
              </div>
                
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

