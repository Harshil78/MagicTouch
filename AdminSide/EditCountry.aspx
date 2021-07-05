<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSide/AdminMaster.master" AutoEventWireup="true" CodeFile="EditCountry.aspx.cs" Inherits="AdminSide_EditCountry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>

</head>
<body>
     <div >
            <h2 style="text-align:center">Edit Country</h2>
        </div>
        <div class="">
               <div class="container-fluid">
                      
                      <asp:label ID="LblState" class="label-control" runat="server" text="Country Name">Country Name:-</asp:label><br />
                            
                             <asp:TextBox ID="TxtCountryName"  placeholder="Enter Country Name" class="form-control" runat="server" Required></asp:TextBox>
                 </div>
                 <div>
                            <br />
                           <asp:Button ID="BtnEdit" class="btn btn-success"  runat="server" Text="Edit" OnClick="BtnEdit_click"   />
             </div>
              </div>
        
        
    
     </body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" Runat="Server">
</asp:Content>

