<%@ Page Title="" Language="C#" MasterPageFile="~/UserSide/UserMaster.master" AutoEventWireup="true" CodeFile="BookEvent.aspx.cs" Inherits="UserSide_BookEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container" style="margin-top:150px">
        <h2>Booking Details</h2>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
       <%-- <div class=" col-md-6" style="border:1px solid ; padding:40px;margin-left:20px;margin-bottom:20px;border-radius:15px">--%>
       <div class="col-md-6 " style="margin-left:30px">
            <h2>Event:<%= Session["EventTypeName"] %></h2>
            <img alt="Not Found" src="../Images/<%# Eval("Image") %>" height="100px" width="100px" />
            <p><h3>Rs.<%# Eval("Amount") %></h3></p>
            <p><%# Eval("Description") %></p>
            <p><%# Eval("VendorServiceName")%></p>
          <div>
         
        </div>
       </div>

        </ItemTemplate>
        </asp:Repeater>
       
      <div class="col-md-4 " style="margin-left:60px;margin-bottom:60px;margin-top:1px;width:400px;">
            <h2>Payment Details</h2>
            
             <div>
                <asp:Label ID="LblAmont" runat="server" Text="Amount"></asp:Label>
                <asp:TextBox ID="TxtAmount" class="form-control" runat="server" ReadOnly ></asp:TextBox>
            </div><br />

             <div>
                <asp:Label ID="LblDeposit" runat="server" Text="Deposit"></asp:Label>
                <asp:TextBox ID="TxtDeposit" ReadOnly class="form-control" runat="server" required></asp:TextBox>
            </div><br />
            <div>
                <asp:Label ID="LblCommission" runat="server" Text="Commission"></asp:Label>
                <asp:TextBox ID="TxtComm" ReadOnly class="form-control" runat="server" required></asp:TextBox>
            </div><br />
              
            <div>
                <asp:Label ID="Label1" runat="server" Text="Payment Method"></asp:Label>
                <asp:DropDownList ID="DDMode" class="form-control" runat="server" required>
                        <asp:ListItem>Select Payment Method</asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>

                </asp:DropDownList>
            </div><br />
  
            <div>
                <asp:Label ID="LblCardName" runat="server" Text="Holder Name"></asp:Label>
                <asp:TextBox ID="TxtCardName" class="form-control" runat="server" required></asp:TextBox>
            </div><br />

            <div>
                <asp:Label ID="LblCardNo" runat="server" Text="Card No"></asp:Label>
                <asp:TextBox ID="TxtCardNo" class="form-control"  pattern="[0-9]{12}" title="Enter Valid Card Number"   runat="server" required></asp:TextBox>
            </div><br />
      

            <div>
                <asp:Label ID="LblExpDate" runat="server" Text="Expire Date"></asp:Label>
                <asp:TextBox ID="TxtExpDate"  type="month" class="form-control inputCard" runat="server" required></asp:TextBox>
            </div><br />

            <div>
                <asp:Label ID="LblCvv" runat="server" Text="Cvv No"></asp:Label>
                <asp:TextBox ID="TxtCvv" class="form-control" pattern="[0-9]{3}" title="Enter Valid CVV Number" runat="server" required></asp:TextBox>
            </div><br />
            <div>
                <asp:Button ID="btnBook" runat="server" class="btn btn-success form-control" Text="Book" onclick="btnBook_Click" /><br />
            </div>
          </div> 
       </div>
</asp:Content>

