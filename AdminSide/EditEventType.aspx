<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="EditEventType.aspx.cs" Inherits="AdminSide_EditEventType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 style="text-align:center">Edit EventType</h2>
<div class="container-fluid" >
      
                 <div class="form-container">
                    <div class="form-control">
                             <asp:label ID="LblEventType" class="" runat="server" text="Event Type Name">Event Type Name:-</asp:label><br />
                             <asp:TextBox ID="TxtEventTypeName"  placeholder="Enter Event TypeName" class="form-control" runat="server" Required></asp:TextBox><br />
                              <asp:Image ID="Image1" runat="server" Width="150" Height="150" /><br />
                       
                             <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" />
                             <br />
                              <asp:Button ID="BtnEdit" class="btn btn-success"  runat="server" Text="Update" 
                                 onclick="BtnEdit_Click1"   />
                    </div>
             
                 </div>
                 
                 
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

