<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="UserSide_Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container" style="margin-top:150px">
    <h2>Messanger</h2>
    <div class="col-md-4">
             <asp:DropDownList ID="DDVendor" class="form-control" ReadOnly runat="server">
             </asp:DropDownList>
     </div>
    
     <div class="col-md-4">
               <asp:TextBox ID="TxtMess" class="form-control" placeholder="Enter Message" runat="server"></asp:TextBox>
      </div>
      <div class="col-md-4">
        <asp:Button ID="BtnSub" class="btn btn-primary"  runat="server" Text="Send" onclick="BtnSub_Click" />
     </div><br /><br />
    
     
    <asp:Repeater ID="RepMess"  runat="server">
    <ItemTemplate>
     <div class="col-md-12" style='margin:20px'>
             <div style ='border-radius:5px;color:white;width:50%;padding:20px;<%# Eval("Type").ToString()=="UV" ? "float:right;background-color:#1976d2" : "float:left;background-color:Green" %>'>
               <%# Eval("Date") %>
               <br /><br />
               <%# Eval("Message") %>
              <span style="margin-left:400px"> <%# Eval("Type").ToString() %></span>
             </div>
    </div>
    </ItemTemplate>
    </asp:Repeater>
</div>
</asp:Content>

