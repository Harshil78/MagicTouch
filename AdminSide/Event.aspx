<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="AdminSide_Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>
 <h2>Event Details</h2>
<table id="example" class="display compact " style="width: 100%;margin-top:50px">
          <thead>
              <tr>
                  
                  
                    <th> Event Name</th>
                     <th>Event Date</th>
                    <th> Event Type Name</th>
                    <th> City Name</th>
                    <th> Venue</th>
                    <th> Location</th>

                    <th> Delete  </th>   
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  <td> <%# Eval("EventName")%> </td>
                  <td> <%# Eval("EventDate")%> </td>
                  <td> <%# Eval("EventTypeName")%> </td>
                  <td> <%# Eval("CityName")%> </td>
                  <td> <%# Eval("Venue")%> </td>
                  <td> <%# Eval("Location")%> </td>

                  <td> <a href='Event.aspx?action=del&Eventid=<%# Eval ("Eventid") %>' class="btn btn-danger" > Delete</a> </td>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
                <tr>
                  
                    <th> Event Name</th>
                     <th>Event Date</th>
                    <th> Event Type Name</th>
                    <th> City Name </th>
                     <th> Venue</th>
                    <th> Location</th>
                    <th> Delete  </th>  
              </tr>
          </tfoot>

          </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

