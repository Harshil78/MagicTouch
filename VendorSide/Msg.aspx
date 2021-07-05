<%@ Page Title="" Language="C#" MasterPageFile="~/VendorSide/VendorMaster.master" AutoEventWireup="true" CodeFile="Msg.aspx.cs" Inherits="VendorSide_Msgaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
</script>

 <div class="container-fluid" >
     <h2>Messanger</h2>
     <br />
     <br />
      <table id="example" class="display compact " style="width: 100%;margin-top:50px">
          
        <thead >
        <tr>
            <th>User Name</th>
            <th> Message</th>
            <th>Date</th>
            <th>Reply</th>

            </tr>
        </thead>
     
    <asp:Repeater ID="RepMess"  runat="server">
    <ItemTemplate>
            <tbody>
                <tr>
                <td><%# Eval("UserName") %></td>
                <td><%# Eval("Message") %></td>
                <td><%# Eval("Date") %></td>
                <td><a href="RMessage.aspx?Userid=<%# Eval ("Userid") %>" class="btn btn-primary">Reply</a></td>
                </tr>

            </tbody>
    </ItemTemplate>
    </asp:Repeater>
    
          <tfoot>
              <tr>
                  
                <th>User Name</th>
            <th> Message</th>
            <th>Date</th>
            <th>Reply</th>

              </tr>
          </tfoot>

          </table>
  </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

