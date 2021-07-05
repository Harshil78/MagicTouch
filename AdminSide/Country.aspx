<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="Country.aspx.cs" Inherits="AdminSide_Country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  
 <script>
     $(document).ready(function () {

         $('#example').DataTable();
     });
</script>

 <div class="container-fluid" >
     <h2>Country Details</h2>
     
     <a href="#" class="btn btn-success" data-target="#mymodal" data-toggle="modal" data-keyboard="true"  >Add</a>
         <div class="modal fade text-center" id="mymodal" role="dialog" >
                <div class="modal-dialog">
                    <div class="modal-content">
                  <div class="modal-header">
                       <h3 class="modal-title">Add Country </h3> 
                 </div>
                 <div class="modal-body">
                 <div class="form-group">
                          <asp:label ID="LblCountry" class="" runat="server" text="Country">Country Name:-</asp:label>
                             <asp:TextBox ID="TxtCountryName"  placeholder="Enter Country Name" class="form-control" runat="server" Required></asp:TextBox>
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
                  <th>City Name</th>
                  <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  <td> <a href='EditCountry.aspx?Countryid=<%# Eval ("Countryid") %>' class=" btn btn-primary"> Edit</a> </td>
                 
                  <td> <%# Eval("CountryName")%> </td>
                  <td> <a href='Country.aspx?action=del&Countryid=<%# Eval ("Countryid") %>' class="btn btn-danger" > Delete</a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
            <tr>
                  <th> Edit  </th>
                  <th>City Name</th>
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

