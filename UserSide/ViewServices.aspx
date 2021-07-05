<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="ViewServices.aspx.cs" Inherits="UserSide_ViewServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
    <div class="container" style="margin-top:122px">
        <asp:DropDownList ID="DDCountry" AutoPostBack="true"  runat="server" 
            onselectedindexchanged="DDCountry_SelectedIndexChanged">
        </asp:DropDownList>&nbsp;
         <asp:DropDownList ID="DDState" AutoPostBack="true"  runat="server" 
            onselectedindexchanged="DDState_SelectedIndexChanged" >
        </asp:DropDownList>&nbsp;
        <asp:DropDownList ID="DDCity" AutoPostBack="true"  runat="server" 
            onselectedindexchanged="DDCity_SelectedIndexChanged">
        </asp:DropDownList>
     
        <asp:TextBox ID="TxtSearch" style="margin-left:850px" class="" placeholder="Search City" runat="server"></asp:TextBox> 
        <asp:Button ID="BtnSearch" class="btn btn-primary" runat="server" Text="Search" onclick="BtnSearch_Click" /> <br />
         
  <br />   <asp:DropDownList AutoPostBack="true" class=" " style="margin-bottom:20px;padding: 8px;margin-left:950px;background-color:#ffdada;box-shadow:2px 5px #888888" ID="DDSort"   runat="server" onselectedindexchanged="DDSort_SelectedIndexChanged">
            <asp:ListItem Value="0">Sort by</asp:ListItem>
            <asp:ListItem Value="1">Low To high Price</asp:ListItem>
            <asp:ListItem Value="2">high To low Price</asp:ListItem>
            <asp:ListItem Value="3">low To high   Rating</asp:ListItem>
            <asp:ListItem Value="4">high To low Rating</asp:ListItem>

        </asp:DropDownList>

    <asp:Repeater ID="Repeater1"  runat="server">
        <ItemTemplate>
  
        <div class="row" style="background-color:#ffdada ; border: 1px solid; padding: 30px;  box-shadow:2px 5px #888888; margin-bottom:30px;border-radius:15px;border-color:#aaa">
           <div class="col-md-3" >
               <img src="../Images/<%# Eval("Image") %>" alt="Not Found" height="150px" width="150px" style="border-radius:15px" />
            </div>
            <div class="col-md-8" >
            <h2><%# Eval("VendorName") %> <a href="VendorRR.aspx?Serviceid=<%= Request.QueryString["Serviceid"]%>&Vendorid=<%# Eval("Vendorid") %>"  class="btn btn-primary" style="height:35px;width:100px;font-size:14px">View Profile</a>   <a href="Message.aspx?Vendorid=<%# Eval("Vendorid") %>"  class="btn btn-primary" style="height:35px;width:80px;font-size:14px">Chat</a> </h2>
            <h3><%# Eval("VendorServiceName") %></h3>
            <p><%# Eval("Description") %></p>
             <p>Package:<%# Eval("Amount") %></p>
             <p>City: <%# Eval("CityName")%></p>
              Rating:- <span style="color:Purple;font-size:20px;"><%# getstar( Eval("Rate").ToString()) %></span> 
             </div>
            <div class="col-md-1" style="vertical-align:bottom" >
            <br />
            <br />
            <br />
            <br />
            <br />
            
            
         <br /><br />
            <a href="BookEvent.aspx?VendorServiceid=<%# Eval("VendorServiceid") %>&Amount=<%# Eval("Amount") %>" class="btn btn-danger " style="height:40px;width:100px;font-size:20px">Book</a> 
          
          </div>    
        </div>
       
    
    </ItemTemplate>
    </asp:Repeater>
    </div>
    </div>
</asp:Content>

