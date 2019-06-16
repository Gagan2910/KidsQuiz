<%@ Page Title="" Language="C#" MasterPageFile="~/Coverpage.Master" AutoEventWireup="true" CodeBehind="Lastpage.aspx.cs" Inherits="Childrendayspecial.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <br />
                 <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Thank you for attending Quiz.We will get back to you soon."></asp:Label>
                <br />
                <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Times New Roman" Font-Size="Medium" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Default.aspx">Click here to go back to Home page</asp:HyperLink>
        <br />
            </div>
        </div>
    </div>
   
</asp:Content>
