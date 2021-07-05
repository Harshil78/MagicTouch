<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="AdminSide_State" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <script>
          $(document).ready(function () {
              $('#example').DataTable();
          });
</script>

 <div class="container-fluid" >
     <h2>State Details</h2>
     
       
       <a href="#" class="btn btn-success" data-target="#mymodal" data-toggle="modal" data-keyboard="true">Add</a>
         <div class="modal fade text-center" id="mymodal" role="dialog" >
                <div class="modal-dialog">
                    <div class="modal-content">
                  <div class="modal-header">
                       <h3 class="modal-title">Add State </h3> 
                 </div>
                 <div class="modal-body">
                 <div class="form-container">
                       <h4> Country Name:-</h4> 
                     <asp:DropDownList ID="DDCountry" class="form-control" runat="server" required>
                     </asp:DropDownList><br />
                        <%--  <asp:label ID="LblState" class="w-25 label-control" runat="server" text="State Name">State Name:-</asp:label>--%>
                            <h4 style="margin-left:1px">State Name:-</h4>
                             <asp:TextBox ID="TxtStateName"  placeholder="Enter State Name" class="form-control" runat="server" Required></asp:TextBox>
                 </div>
                 <div>
                            <br />
                           <asp:Button ID="BtnAdd" class="btn btn-success"  runat="server" Text="Insert" OnClick="BtnAdd_click"   />
             </div>

    </div>
    <div class="modal-footer">   
        <asp:Button ID="BtnClose" class="btn btn-danger" data-dismiss="modal" runat="server" Text="Close" />
    </div>
    </div>
    </div>
    </div>
    <br />
     <br />
     
      <table id="example" class="display compact " style="width: 100%;margin-top:50px">
          <thead>
              <tr>
                  <th> Edit  </th>
                  <th> Country Name</th>
                  <th> StateName   </th>
               
                    <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  <td> <a href='EditState.aspx?Stateid=<%# Eval("Stateid") %>' class=' btn btn-primary' > Edit</a> </td>
                  <td> <%# Eval("CountryName")%> </td>
                  <td> <%# Eval ("StateName") %> </td>
                 
                  <td> <a href='State.aspx?action=del&Stateid=<%# Eval("Stateid") %>' class="btn btn-danger" > Delete</a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
              <tr>
                  <th> Edit  </th>
                  <th> Countryid</th>
                  <th> StateName   </th>
               
                    <th> Delete  </th> 
              </tr>
          </tfoot>

          </table>
            <div id="theModal" class="modal fade  text-center ">
                        <div class="modal-dialog">
                          <div class="modal-content">
                          </div>
                        </div>
                     
                      <script>
                          $('.li-modal').on('click', function (e) {
                              e.preventDefault();
                              $('#theModal').modal('show').find('.modal-content').load($(this).attr('href'));
                          });
                      </script>
         </div>
 
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

