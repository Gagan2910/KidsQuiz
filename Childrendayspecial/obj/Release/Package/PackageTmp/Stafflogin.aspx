<%@ Page Title="" Language="C#" MasterPageFile="~/Coverpage.Master" AutoEventWireup="true" CodeBehind="Stafflogin.aspx.cs" Inherits="Childrendayspecial.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <div class="container align-content-center">
        <div class="row">
            <div class="col-sm-12 stafflogin">
                Staff Login<br />
           <asp:Label ID="lbltxt" runat="server" Font-Bold="True" Font-Size="Medium" Text-Align="Center" ForeColor="Red" Visible="False"></asp:Label>
           <br />
            </div></div>
            <div class="row">
                <div class="col-sm-4 text-right">StaffID</div>
                <div class="col-sm-5 text-left"><asp:TextBox ID="txtadminname" class="form-control" runat="server" Width="276px"></asp:TextBox></div>
                <div class="col-sm-3 text-left"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtadminname" ForeColor="Red">*</asp:RequiredFieldValidator></div> 
            </div>
        <br />
            <div class="row">
                <div class="col-sm-4 text-right">Password</div>
                <div class="col-sm-5 text-left"><asp:TextBox ID="txtadminpassword"  class="form-control" runat="server" Width="276px" TextMode="Password"></asp:TextBox></div>
                <div class="col-sm-3 text-left"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtadminpassword" ForeColor="Red">*</asp:RequiredFieldValidator></div> 
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                      <br />
            <asp:Button ID="btnstafflogin" runat="server" BackColor="Red" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Height="44px" Text="Submit" OnClick="btnstafflogin_Click" />
                </div>
            </div>
        
    </div>
</asp:Content>
