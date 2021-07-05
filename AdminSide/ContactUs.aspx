<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="AdminSide_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
</script>

 <div class="container-fluid" >
     <h2>Contact Details</h2>
     <br />
     <br />
      <table id="example" class="display compact " style="width: 100%;margin-top:50px">
          <thead>
              <tr>
                 
                  <th> Name  </th>
                  <th> Contact   </th>
                  <th>Email  </th>
                  <th> Description</th>
                    <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  
                  <td> <%# Eval("Name")%> </td>
                  <td> <%# Eval("ContactNo")%> </td>
                  <td> <%# Eval ("Email") %> </td>
                  <td> <%# Eval ("Description") %> </td>
                  <td> <a href='ContactUs.aspx?action=del&Contactid=<%# Eval ("Contactid") %>' class="btn btn-danger" > Delete</a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
               <tr>
                 
                  <th> Name  </th>
                  <th> Contact   </th>
                  <th>Email  </th>
                  <th> Description</th>
                    <th> Delete  </th> 
              </tr>
          </tfoot>

          </table>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

