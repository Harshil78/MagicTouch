<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMaster.master" AutoEventWireup="true" CodeFile="FPassword.aspx.cs" Inherits="Visitor_FPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>
    *{
       color:Black;
      }

   
    .form-container{
        border:0px solid #fff;
        padding:20px 60px;
        margin-top:20vh;
        -webkit-box-shadow: 1px 4px 26px 11px rgba(240,14,37,1);
        -moz-box-shadow: 1px 4px 26px 11px rgba(240,14,37,1);
          box-shadow: 1px 4px 10px 11px #aaaa;
          background-color:#FC8787 ;
    }
    </style>
  
<div class="container-fluid " style="margin-top:50px;background-color:#ccc;" >
    
            <div class="row" >
                <div class="col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-sm-4 col-xs-12 ">
            <div class="form-container" >
                <h2>Change Password </h2>
                
                         <div >
                                <asp:Label ID="LblNewPass" runat="server" Text="New Password"></asp:Label>
                                <asp:TextBox ID="TxtNewPass"  TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" class="form-control" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters" runat="server" ></asp:TextBox>
                         </div><br />

                         <div >
                                <asp:Label ID="LblCPass" runat="server" Text="Confirm Password"></asp:Label>
                                <asp:TextBox ID="TxtCPass" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters" class="form-control" runat="server"></asp:TextBox>
                                <asp:CompareValidator
                                    ID="CompareValidator1" runat="server" Display="Dynamic" ForeColor="Blue" style="font-size:30px;width:60px" ControlToCompare="TxtNewPass" ControlToValidate="TxtCPass" ErrorMessage="Not Match"></asp:CompareValidator>
                         </div>


                   <br /><asp:Button ID="Submit" class="btn btn-success" runat="server" Text="Change Password" onclick="Submit_Click"  />
                 </div>     
              </div>
           <div class="col-md-4 col-sm-4 col-xs-12"></div>
     </div>
   
</div>
 
</asp:Content>

