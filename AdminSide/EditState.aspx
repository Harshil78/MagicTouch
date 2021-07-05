<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="EditState.aspx.cs" Inherits="AdminSide_EditState" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="text-align:center">Edit State</h2>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

