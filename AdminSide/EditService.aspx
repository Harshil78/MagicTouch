<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="EditService.aspx.cs" Inherits="AdminSide_EditService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid" >
<h2 style="text-align:center">Edit Service</h2>      
                 <div class="form-container">
                    <div >
                          <asp:label ID="LblService" class="" runat="server" text="Service Name">Service Name:-</asp:label><br />
                             <asp:TextBox ID="TxtServiceName"  placeholder="Enter Service Name" class="form-control" runat="server"></asp:TextBox><br />
                             <asp:Image ID="Image1" runat="server" Width="150" Height="150" /><br />
                        <asp:label ID="Image" class="" runat="server" text="Image">Image:-</asp:label><br />
                             <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" />
                 </div>
                 
                       <br />    <asp:Button ID="BtnEdit" class="btn btn-success"  runat="server" Text="Edit"  OnClick="BtnEdit_Click" />
            
              </div>
              
             
                 </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

