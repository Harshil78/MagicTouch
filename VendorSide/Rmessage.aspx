<%@ Page Title="" Language="C#" MasterPageFile="~/VendorSide/VendorMaster.master" AutoEventWireup="true" CodeFile="Rmessage.aspx.cs" Inherits="VendorSide_Rmessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" >
    <h2>Messanger</h2><br />
    <div class="col-md-4">
             <asp:DropDownList ID="DDUser" class="form-control" ReadOnly runat="server">
             </asp:DropDownList>
     </div>
    <br />
     <div class="col-md-4">
               <asp:TextBox ID="TxtMess" class="form-control" placeholder="Enter Message" runat="server"></asp:TextBox><br />
                <asp:Button ID="BtnSend" class="btn btn-primary"  runat="server" Text="Send"  onclick="BtnSend_Click" />
      </div>
      <br />
      <div class="col-md-4">
       
     </div>
     <div class='clearfix'></div>
      <asp:Repeater ID="RepMess"  runat="server">
    <ItemTemplate>
     <div class="col-md-12" style='margin:20px'>
             <div style ='border-radius:5px;color:white;width:50%;padding:20px;<%# Eval("Type").ToString()=="VU" ? "background-color:#1976d2;margin-left:400px" : "background-color:Green" %>'>
               <%# Eval("Date") %>
               <br /><br />
               <%# Eval("Message") %>
              <span style="margin-left:400px"> <%# Eval("Type").ToString() %></span>
             </div>
             <br />
    </div>
    </ItemTemplate>
    </asp:Repeater>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

