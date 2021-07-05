<%@ Page Title="" Language="C#" MasterPageFile="~/VendorSide/VendorMaster.master" AutoEventWireup="true" CodeFile="VendorService.aspx.cs" Inherits="VendorSide_VendorService" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>
<div class="container-fluid" >
     <h2>Vendor Services</h2>
     
       
       <a href="#" class="btn btn-success" data-target="#mymodal" data-toggle="modal" data-keyboard="true">Add</a>
         <div class="modal fade text-center" id="mymodal" role="dialog" >
                <div class="modal-dialog">
                    <div class="modal-content">
                  <div class="modal-header">
                       <h3 class="modal-title">Add Vendor Services </h3> 
                 </div>
                 <div class="modal-body">
                 <div class="form-container">
                     <%--  <h4> Vendor Name:-</h4> 
                     <asp:DropDownList ID="DDVendorid" class="form-control" runat="server" required>
                     </asp:DropDownList><br />--%>
                     
                        <h4 >Vendor Service Name:-</h4>
                        <asp:TextBox ID="TxtVendorServiceName"  placeholder="Enter Vendor Service Name" class="form-control" runat="server" Required></asp:TextBox>

                        <br /><h4>Service Name:-</h4> 
                     <asp:DropDownList ID="DDServiceid" class="form-control" runat="server" required>
                     </asp:DropDownList><br />

                      <h4 >Amount:-</h4>
                        <asp:TextBox ID="TxtAmount"  placeholder="Enter Amount" class="form-control" runat="server" Required></asp:TextBox>

                        <br /> <h4 >Description:-</h4>
                        <asp:TextBox ID="TxtDesc"  placeholder="Enter Description" class="form-control" runat="server" Required></asp:TextBox>

                         <br /><h4 >Image:-</h4>
                          <asp:FileUpload ID="ImageUpload" runat="server" />
                 </div>
                 <div>
                            <br />
                           <asp:Button ID="BtnAdd" class="btn btn-success"  runat="server" Text="Insert"  OnClick="BtnAdd_Click" />
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
                  
                   
                     
                    <th>Edit</th>
                    
                    <th> Vendor Service Name</th>
                    <th> Service Name</th>
                    <th> Amount</th>
                    <th> Description  </th> 
                     <th>Image</th>  
                      <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                   <td> <a href='MEditVendorService.aspx?VendorServiceid=<%# Eval ("VendorServiceid") %>' class="li-modal btn btn-primary" > Edit</a> </td>
                  <td style="align:center"> <%# Eval("VendorServiceName")%> </td>
                 <td> <%# Eval("ServiceName")%> </td>
                  <td> <%# Eval("Amount")%> </td>
                  <td> <%# Eval("Description")%> </td>
                  <td> <img src="../Images/<%# Eval("Image") %>" width="80px" height="80px" alt="Not Found" /> </td>
                  <td> <a href='VendorService.aspx?action=del&VendorServiceid=<%# Eval ("VendorServiceid") %>' class="btn btn-danger" > Delete</a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
              <tr>
                      
                   <th>Edit</th>
                   
                    <th> Vendor Service Name</th>
                    <th> Service Name</th>
                    <th> Amount</th>
                    <th> Description  </th> 
                     <th>Image</th>  
                      <th> Delete  </th> 
             </tr>
          </tfoot>

          </table>
            <div id="theModal" class="modal fade ">
                        <div class="modal-dialog">
                          <div class="modal-content" ">
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

