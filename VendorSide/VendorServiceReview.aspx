<%@ Page Title="" Language="C#" MasterPageFile="~/VendorSide/VendorMaster.master" AutoEventWireup="true" CodeFile="VendorServiceReview.aspx.cs" Inherits="VendorSide_VendorServiceReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>
 <h2>Vendor Service Review</h2>
<table id="example" class="display compact " style="width: 100%;margin-top:50px">
          <thead>
              <tr>
                  
                   
                    <th> Vendor Service Name  </th>
                    <th>User Name</th>
                    <th> Review Date</th>
                    <th> Review</th>
                 <%--   <th> Delete  </th>   --%>
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  
                  <td> <%# Eval("VendorServiceName")%> </td>
                  <td> <%# Eval("UserName")%> </td>
                  <td> <%# Eval("ReviewDate")%> </td>
                  <td> <%# Eval("Review")%> </td>
                  <%--<td> <a href='VendorServiceReview.aspx?action=del&VendorServiceReviewid=<%# Eval ("VendorServiceReviewid") %>' class="btn btn-danger" > Delete</a> </td>--%>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
              <tr>
                      
                    <th> Vendor Service Name </th>
                    <th>User Name</th>
                    <th> Review Date</th>
                    <th> Review</th>
                    <%--<th> Delete  </th> --%>
             </tr>
          </tfoot>

          </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

