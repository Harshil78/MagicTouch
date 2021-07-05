<%@ Page Title="" Language="C#" MasterPageFile="~/VendorSide/VendorMaster.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="VendorSide_BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
</script>
 
 <div class="container-fluid" >
     <h2>Booking Details</h2>
     <br />
     <div style="margin-left:60%">
        <div><asp:TextBox ID="TxtStart" class="" placeholder="Enter Start Date" type="Date" runat="server"></asp:TextBox>  To  <asp:TextBox ID="TxtEnd" placeholder="Enter End Date" type="Date" runat="server"></asp:TextBox>&nbsp; 
         <asp:Button ID="BtnRep" class=" btn-primary" runat="server" Text="Report" 
        onclick="BtnRep_Click"  />
            </div>
    <br />
         <div>
            <div>
                <asp:TextBox ID="TxtVService" placeholder="Vendor Service Name" runat="server" ></asp:TextBox>&nbsp;<asp:Button
                    ID="BtnSearch" runat="server" class="btn-primary" Text="Search Services " 
                    onclick="BtnSearch_Click"  />
            </div>
         </div>
     </div>
     <br />
     <br />
      <table id="example" class="display compact " style="width: 100%;margin-top:50px">
          <thead>
              <tr>
                 
                  <th> Event Name  </th>
                  <th> Vendor Service    </th>
                  <th>Amount </th>
                  <th> Deposit </th>
                  <th>Commission</th>
                  <th>Book Date</th>
                  <th>Payment Mode</th>
                   <th>Credit Card Name</th>
                <%--   <th>Credit Card No</th>
                   <th>Expire Date</th>
                    <th> CvvNo  </th> --%>
              </tr>
          </thead>
          <tbody>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
              <tr>
                  
                  <td> <%# Eval("EventName")%> </td>
                  <td> <%# Eval("VendorServiceName")%> </td>
                  <td> <%# Eval ("Amount") %> </td>
                  <td> <%# Eval ("Deposit") %> </td>
                  <td> <%# Eval ("Commission") %> </td>
                  <td> <%# Eval ("BookDate") %> </td>
                  <td> <%# Eval ("PaymentMode") %> </td>
                  <td> <%# Eval ("CreditCardName") %> </td>
                 <%-- <td> <%# Eval("CreditCardNo")%> </td>
                  <td> <%# Eval("ExpireDate")%> </td>
                  <td> <%# Eval("CvvNo")%> </td>--%>

                 <%-- <td> <img src="../Images/<%# Eval("Image") %>" width="80px" height="80px" alt="Not Found" /> </td>--%>
                  <%--<td> <a href='ViewUser.aspx?action=del&Userid=<%# Eval ("Userid") %>' class="btn btn-danger" > Delete</a> </td>--%>
              </tr>
              </ItemTemplate>
              </asp:Repeater>              
          </tbody>
          <tfoot>
              <tr>
                  
                  <th> Event Name  </th>
                  <th> Vendor Service   </th>
                  <th>Amount </th>
                  <th> Deposit </th>
                  <th>Commission</th>
                  <th>Book Date</th>
                  <th>Payment Mode</th>
                   <th>Credit Card Name</th>
                  <%-- <th>Credit Card No</th>
                   <th>Expire Date</th>
                    <th> CvvNo  </th> --%> 
              </tr>
          </tfoot>

          </table>
  </div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

