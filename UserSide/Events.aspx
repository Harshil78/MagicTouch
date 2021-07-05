<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="UserSide_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../bootstrap-4.3.1-dist/js/datatables.js" type="text/javascript"></script>
    <link href="../bootstrap-4.3.1-dist/css/datatables.css" rel="stylesheet" type="text/css" />
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
            
        });
</script>
<style>
    
    th
    {
        text-align:center;
        
    }
    td
    {
    text-align:center;
    font-family:Arial;
    font-size:18px;
    font-variant:small-caps;
    }
    
</style>
<body style="background-color:#EBD5EC  ">
 <div class="container-fluid" style="margin:200px; " >
 <h2 >Event : <asp:Label ID="LblEvent" runat="server" style="color:Blue" Text=""></asp:Label></h2>
     <br />
     <br />
     <a href='SelectEvent.aspx?EventTypeid=<%= Session["EventTypeid"] %>'  class="btn btn-primary ">Add Event</a>
      
     <br />
     <br />
      <table id="example"   class="display compact " style="margin-top:100px;margin-left:40px;text-align:center">
      
          <thead >
              <tr>
                 
                 
                  <th> Event Name   </th>
                  <th>Event Date  </th>
                  <th>City</th>
                  <th> Venue </th>
                  <th>Location</th>
                  <th>Book Service</th>
                   <th>Delete</th>
                    
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                 <%-- <td> <a href='EditEvent.aspx?Eventid=<%# Eval ("Eventid") %>' class="fa fa-pencil-square-o li-modal" ></a> </td>--%>
                  <td> <%# Eval("EventName")%> </td>
                  <td> <%# Eval("EventDate")%> </td>
                  <td> <%# Eval ("CityName") %> </td>
                  <td> <%# Eval ("Venue") %> </td>
                  <td> <a href="Map.aspx?Eventid=<%# Eval("Eventid") %>&Location=<%# Eval("Location") %>" class="btn btn-primary fa fa-location-arrow" > Location</a> </td>
                  <td> <a href="ServicesDetails.aspx?Eventid=<%# Eval("Eventid") %>" class="btn btn-primary">Service Book</a> </td>
                  <td> <a href='Events.aspx?action=del&Eventid=<%# Eval ("Eventid") %>' class="fa fa-trash" > </a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
           <div id="theModal" class="modal fade  ">
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
          <tfoot>
              <tr>
                  
                  
                  <th> Event Name   </th>
                  <th>Event Date  </th>
                  <th>City  </th>
                  <th> Venue </th>
                  <th>Location</th>
                  <th>Book Service</th>
                   <th>Delete</th>
                    
              </tr>
          </tfoot>

          </table>
  </div>
 </body>
</asp:Content>

