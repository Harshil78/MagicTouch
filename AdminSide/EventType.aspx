<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="EventType.aspx.cs" Inherits="AdminSide_EventType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
</script>

 <div class="container-fluid" >
     <h2>Event Type</h2>
       <a href="#" class="btn btn-success" data-target="#mymodal" data-toggle="modal" data-keyboard="true"  >Add</a>
         <div class="modal fade text-center" id="mymodal" role="dialog" >
                <div class="modal-dialog">
                    <div class="modal-content">
                  <div class="modal-header">
                       <h3 class="modal-title">Add Event Type</h3> 
                 </div>
                 <div class="modal-body">
                 <div class="form-container">
                    <div class="form-control">
                             <asp:label ID="LblEventType" class="" runat="server" text="Event Type Name">Event Type Name:-</asp:label><br />
                             <asp:TextBox ID="TxtEventTypeName"  placeholder="Enter Event TypeName" class="form-control" runat="server" Required></asp:TextBox><br />
                             <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" /><br />
                              <asp:Button ID="BtnAdd" class="btn btn-success"  runat="server" Text="Add"  OnClick="BtnAdd_Click" />
                    </div>
             
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
                   <th>Event Type Name</th>
                   <th>Image</th>

                    <th> Delete  </th> 
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  <td> <a href='EditEventType.aspx?EventTypeid=<%# Eval ("EventTypeid") %>' class=" btn btn-primary" > Edit</a> </td>
                  <td> <%# Eval("EventTypeName")%> </td>
                  <td> <img src="../Images/<%# Eval("Image") %>" width="80px" height="80px" alt="Not Found" /></td>
                  <td> <a href='EventType.aspx?action=del&EventTypeid=<%# Eval ("EventTypeid") %>' class="btn btn-danger" > Delete</a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
              <tr>
                  <th> Edit  </th>
                   <th>Event Type Name</th>
                   <th>Image</th>
                    <th>Delete</th> 
              </tr>
          </tfoot>

          </table>  
          <div id="theModal" class="modal fade  text-center " >
                        <div class="modal-dialog">
                          <div class="modal-content" style="z-index:100;height:400px">
                          </div>
                        </div>
                     
                      <script>
                          $('.li-modal').on('click', function (e) {
                             // alert($('#theModal').modal('show').find('.modal-content').load("Default.aspx"));
                              e.preventDefault();
                              $('#theModal').modal('show').find('.modal-content').load($(this).attr('href'));
                             // $('#theModal').modal('show').find('.modal-content').load("Default.aspx");
                          });
                      </script>
         <div>
         </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

