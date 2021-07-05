<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="UserRate.aspx.cs" Inherits="AdminSide_UserRate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script>
      $(document).ready(function () {
          $('#example').DataTable();
      });
</script>
 <h2>User Rating</h2>
<table id="example" class="display compact " style="width: 100%;margin-top:50px">
          <thead>
              <tr>
                  
                   <th>User Name</th>
                    <th> Vendor Name</th>
                    <th> Rate</th>
                  <th> Delete  </th>   
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  <td> <%# Eval("UserName")%> </td>
                  <td> <%# Eval("VendorName")%> </td>
                 <td> <span style="color:Purple;font-size:20px;"><%# getstar( Eval("Rate").ToString()) %></span> </td>
                  <td> <a href='UserRate.aspx?action=del&UserRateid=<%# Eval ("UserRateid") %>' class="btn btn-danger" > Delete</a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
              <tr>
                   <th>UserName</th>
                    <th> VendorName  </th>
                    <th> Rate</th>
                  <th> Delete  </th> 
             </tr>
          </tfoot>

          </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

