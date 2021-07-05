<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="Map.aspx.cs" Inherits="UserSide_Map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="map-in" style="margin-top:150px;margin-left:100px;margin-right:100px">
    <asp:Label ID="LblLocation" runat="server" Text=""></asp:Label>
<iframe width="100% " height="470" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
src='https://maps.google.com/maps?q=<%=Request.QueryString["Location"].ToString()%>&hl=es;z=14&amp;output=embed'>
</iframe><br /><small><a href='https://maps.google.com/maps?q=<%=Request.QueryString["Location"].ToString()%>&hl=es;z=14&amp;output=embed' 
style="color:#0000FF;text-align:left" target="_blank">See map bigger</a></small>
</div>
</asp:Content>

