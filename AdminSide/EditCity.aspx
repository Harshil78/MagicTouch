<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="EditCity.aspx.cs" Inherits="AdminSide_EditCity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 style="text-align:center">Edit City</h2>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

