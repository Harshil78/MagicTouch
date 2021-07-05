<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMaster.master" AutoEventWireup="true" CodeFile="UserRegister.aspx.cs" Inherits="Visitor_UserRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
    <title>User Register</title>
</head>
<body>
<div class="clearfix"></div>
    
         <div class="container" style="margin-top:100px">
    <h2 style="text-align:center;text-decoration:underline" >Registration</h2>        
                <div class="col-md-6">       
                      <br /> <label class="control-label">User Name:</label>
                        <br />  <asp:TextBox ID="TxtUserName" placeholder="Enter User Name"  class="form-control" runat="server" required ></asp:TextBox>
                    </div>
                        
                    <div class="col-md-6">       
                        <br />  <label class="control-label">Address:</label>
                      
                        <br />  <asp:TextBox ID="TxtAddress"  placeholder="Enter Address" class="form-control" runat="server" required ></asp:TextBox> 
                     </div>
           
                    <div class="col-md-6">       
                        <br />  <label class="control-label">Contact:</label>
                        <br />  <asp:TextBox ID="TxtContact"  placeholder="Enter Contact" pattern="[0-9]{10}" title="Please Correct Contact Number" class="form-control" runat="server" required ></asp:TextBox>
                    </div>
                
                    <div class="col-md-6">       
                       <br />   <label class="control-label">Email:</label>
                        <br />  <asp:TextBox ID="TxtEmail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please Enter Email In Proper Manner"  placeholder="Enter Email" class="form-control" runat="server" required></asp:TextBox>
                    </div>
                  
                    <div class="col-md-6">       
                        <br />  <label class="control-label">Password:</label>      
                        <br />  <asp:TextBox ID="TxtPassword" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"   placeholder="Enter Password" class="form-control" runat="server"  ToolTip="at least one number, one lowercase and one uppercase letter and one special character,at least six characters" required></asp:TextBox>
                    </div>

                  <div class="col-md-6">       
                         <br /> <label class="control-label">Gender:</label>
                         <br /> 
                          <asp:DropDownList ID="DDGender"  class="form-control" runat="server">
                            <asp:ListItem Selected >Select Gender</asp:ListItem>      
                            <asp:ListItem Text="Male" Value="Male">Male</asp:ListItem>      
                            <asp:ListItem Text="Female" Value="Female">Female</asp:ListItem>      

                        </asp:DropDownList>
                    </div>
                     
                      <div class="col-md-6">       
                     <br />  <label class="control-label">Country:</label>
                      <br />    <asp:DropDownList ID="DDCountry"  AutoPostBack="true" class="form-control" runat="server"   onselectedindexchanged="DDCountry_SelectedIndexChanged">
                      
                        </asp:DropDownList>
                    </div>  
                    
                      <div class="col-md-6">       
                     <br />  <label class="control-label">State:</label>
                      <br />    <asp:DropDownList ID="DDState"  AutoPostBack="true" class="form-control"      runat="server" onselectedindexchanged="DDState_SelectedIndexChanged">
                        
                        </asp:DropDownList>
                    </div>   
                     
                    <div class="col-md-6">       
                     <br />  <label class="control-label">City:</label>
                      <br />    <asp:DropDownList ID="DDCity"  AutoPostBack="true" class="form-control" runat="server" >
                        
                        </asp:DropDownList>
                    </div>   

                    <div class="col-md-6">       
                      <br /> <label class="control-label">Security Question:</label>
                        <br /> 
                        <asp:DropDownList ID="DDQue" class="form-control" runat="server">
                            <asp:ListItem>Select Question</asp:ListItem>
                            <asp:ListItem>What is your pet name?</asp:ListItem>
                            <asp:ListItem>What is your childhood name?</asp:ListItem>
                            <asp:ListItem>What is your best name?</asp:ListItem>
                            <asp:ListItem>What is your first school name?</asp:ListItem>
                            <asp:ListItem>What is your favourite actor/actress name?</asp:ListItem>

                        </asp:DropDownList>
                    </div>   

                    
                    <div class="col-md-6">       
                     <br />  <label class="control-label">Security Answer:</label>
                       <br />   <asp:TextBox ID="TxtAns" placeholder="Enter Security Answer"   class="form-control" runat="server" required></asp:TextBox>
                    </div>   

                    <div class="col-md-6">       
                     <br />  <label class="control-label">Profile Picture:</label>
                        <br />  <asp:FileUpload ID="ImageUpload" class="form-control" runat="server" required />
                    </div>
                    
                    <div class="col-md-12">
                    <br />    <asp:Button ID="BtnAdd" class="form-control btn btn-primary" style="font-size:19px" runat="server" Text="Sign In" onclick="BtnAdd_Click" /> <br />
                    </div>
            </div>



</body>
</asp:Content>

