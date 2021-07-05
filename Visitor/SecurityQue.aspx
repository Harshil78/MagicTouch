<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMaster.master" AutoEventWireup="true" CodeFile="SecurityQue.aspx.cs" Inherits="Visitor_SecurityQue" %>

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
                <h2>Forgot Password </h2>
                
                         <div >
                                <asp:Label ID="LblSeq" runat="server" Text="Security Question"></asp:Label>
                                <asp:TextBox ID="TxtSQue"  class="form-control" runat="server" ReadOnly></asp:TextBox>
                         </div><br />

                         <div >
                                <asp:Label ID="LblAns" runat="server" Text="Answer"></asp:Label>
                                <asp:TextBox ID="TxtAns" class="form-control" runat="server"></asp:TextBox>
                         </div>


                   <br />  <asp:Button ID="Submit" class="btn btn-success" runat="server"  Text="Submit" onclick="Submit_Click" />
                 </div>     
              </div>
           <div class="col-md-4 col-sm-4 col-xs-12"></div>
     </div>
   
</div>
 
</asp:Content>

