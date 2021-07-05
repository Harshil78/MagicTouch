<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewUser.aspx.cs" Inherits="AdminSide_ViewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        $(document).ready(function () {
            $('#example').DataTable();        });
</script>

 <div class="container-fluid"  >
     <h2>User Details</h2>
     <br />
     <br />
      <table id="example" class="display compact " style="margin-top:50px;font-size:14px">
          <thead>
              <tr>
                 
                  <th> UserName  </th>
                  <th> Contact   </th>
                  <th>Email  </th>
                  <th> Password </th>
                  <th>Gender</th>
                  <th>Country</th>
                  <th>State</th>
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
                  
                  <td> <%# Eval("UserName")%> </td>
                  <td> <%# Eval("Contact")%> </td>
                  <td> <%# Eval ("Email") %> </td>
                  <td> <%# Eval ("Password") %> </td>
                  <td> <%# Eval ("Gender") %> </td>
                  <td> <%# Eval ("CountryName") %> </td>
                    <td> <%# Eval ("StateName") %> </td>

                  <td> <%# Eval ("CityName") %> </td>
                  <td> <%# Eval ("SecurityQue") %> </td>
                  <td> <%# Eval("SecurityAns")%> </td>
                  <td> <img src="../Images/<%# Eval("Image") %>" width="80px" height="80px" alt="Not Found" /> </td>
                  <td> <a href='ViewUser.aspx?action=del&Userid=<%# Eval ("Userid") %>' class="fa fa-trash" > </a> </td>
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
                  <th>Gender</th>
                  <th>Country</th>
                  <th>State</th>
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

