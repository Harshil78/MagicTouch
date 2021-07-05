<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="VendorDetails.aspx.cs" Inherits="AdminSide_VendorDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
</script>

 <div class="container-fluid"  >
     <h2>Vendor Details</h2>
     <br />
     <br />
      <table id="example" class="display compact " style="margin-top:50px;font-size:14px">
          <thead>
              <tr>
                 
                  <th> UserName  </th>
                  <th> Contact   </th>
                  <th>Email  </th>
                  <th> Password </th>
                  <th>Orgnization Name </th>
                 
                  <th>City </th>
                   <th>Security Que</th>
                   <th>Security Ans</th>
                   <th>Image</th>
                    <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  
                  <td> <%# Eval("VendorName")%> </td>
                  <td> <%# Eval("Contact")%> </td>
                  <td> <%# Eval ("Email") %> </td>
                  <td> <%# Eval ("Password") %> </td>
                  <td> <%# Eval ("OrgName") %> </td>
                 

                  <td> <%# Eval ("CityName") %> </td>
                  <td> <%# Eval ("SecurityQue") %> </td>
                  <td> <%# Eval("SecurityAns")%> </td>
                  <td> <img src="../Images/<%# Eval("Image") %>" width="80px" height="80px" alt="Not Found" /> </td>
                  <td> <a href='VendorDetails.aspx?action=del&Vendorid=<%# Eval ("Vendorid") %>' class="fa fa-trash" > </a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
                   <tr>
                 
                  <th> UserName  </th>
                  <th> Contact   </th>
                  <th>Email  </th>
                  <th> Password </th>
                  <th>Orgnization Name </th>
                 
                  <th>City </th>
                   <th>Security Que</th>
                   <th>Security Ans</th>
                   <th>Image</th>
                    <th> Delete  </th> 
              </tr>
          </tfoot>

          </table>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

