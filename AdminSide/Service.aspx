<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="AdminSide_Service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
 <script>
     $(document).ready(function () {

         $('#example').DataTable();
     });
</script>

 <div class="container-fluid" >
     <h2>Service Details</h2>
     
     <a href="#" class="btn btn-success" data-target="#mymodal" data-toggle="modal" data-keyboard="true"  >Add</a>
         <div class="modal fade text-center" id="mymodal" role="dialog" >
                <div class="modal-dialog">
                    <div class="modal-content">
                  <div class="modal-header">
                       <h3 class="modal-title">Add Service</h3> 
                 </div>
                 <div class="modal-body">
                 <div class="">
                          <asp:label ID="LblService" class="" runat="server" text="Country">Service Name:-</asp:label><br />
                          </div>
                    <br />        <div class="">
                             <asp:TextBox ID="TxtServiceName"  placeholder="Enter Service Name" class="form-control" runat="server" Required></asp:TextBox><br />
                <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" /><br />
                 </div>
                 <div class="form-group">
                           <asp:Button ID="BtnAdd" class="btn btn-success"  runat="server" Text="Add"  OnClick="BtnAdd_Click" />
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
                  <th>Service Name</th>
                  <th>Image</th>
                  <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  <td> <a href='EditService.aspx?Serviceid=<%# Eval ("Serviceid") %>' class=" btn btn-primary"> Edit</a> </td>
                  <td> <%# Eval("ServiceName")%> </td>
                   <td> <img src="../Images/<%# Eval("Image") %>" width="80px" height="80px" alt="Not Found" /></td>
                  <td> <a href='Service.aspx?action=del&Serviceid=<%# Eval ("Serviceid") %>' class="btn btn-danger" > Delete</a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
            <tr>
                  <th> Edit  </th>
                  <th>Service Name</th>
                  <th>Image</th>

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

