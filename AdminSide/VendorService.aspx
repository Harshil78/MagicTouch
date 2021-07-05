<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="VendorService.aspx.cs" Inherits="AdminSide_VendorService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>
 <h2>Vendor Service </h2>
<table id="example" class="display compact " style="width: 100%;margin-top:50px">
          <thead>
              <tr>
                  
                  
                    <th>Vendor Name</th>
                    <th> Vendor Service Name</th>
                    <th> Service Name</th>
                    <th> Amount</th>
                    <th> Description  </th>
                    <th> Image</th>
                       
                      <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  
                  <td> <%# Eval("VendorName")%> </td>
                  <td> <%# Eval("VendorServiceName")%> </td>
                  <td> <%# Eval("ServiceName")%> </td>
                  <td> <%# Eval("Amount")%> </td>
                  <td> <%# Eval("Description")%> </td>
                  <td> <%# Eval("Image")%> </td>
                  <td> <a href='VendorService.aspx?action=del&VendorServiceid=<%# Eval ("VendorServiceid") %>' class="btn btn-danger" > Delete</a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
              <tr>
                      
                    
                    <th>Vendor Name</th>
                    <th> Vendor Service Name</th>
                    <th> Service Name</th>
                    <th> Amount</th>
                    <th> Description  </th>
                    <th> Image </th>
                       
                    <th> Delete  </th> 
             </tr>
          </tfoot>

          </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

