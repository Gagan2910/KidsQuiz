<%@ Page Title="" Language="C#" MasterPageFile="~/Coverpage.Master" AutoEventWireup="true" CodeBehind="Registerpage.aspx.cs" Inherits="Childrendayspecial.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center"> <asp:Label ID="Label5"   runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" Text="Please Register Here" align="center"></asp:Label></div>
        </div>
        <div class="row">
            <div class="col-sm-12 text-center">
                 <asp:Label ID="lblerror" runat="server" Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
            </div>
        </div>
        
         <br />
        <div class="row">
            <div class="col-sm-12 text-center">
             <asp:Label ID="lblmsg" runat="server" align="center" ForeColor="Red" BackColor="Yellow" Font-Bold="True" Font-Size="X-Large" Text="Winner will be announced today,through contact number.So please fill the correct contact number"></asp:Label>
        </div>
            </div>
             <br />
        <div class="row">
            <div class="col-sm-6 text-center">
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Firstname"></asp:Label>
            </div>
            <div class="col-sm-6 text-center">
                 <asp:TextBox ID="txtfirstname" runat="server" class="form-control" Width="258px" Height="27px" style="margin-left: 0px"></asp:TextBox>
            </div></div>
             <br />
        <div class="row">
            <div class="col-sm-6 text-center">
                <asp:Label ID="Label2" runat="server"  Font-Bold="True" Font-Size="Medium" Text="Lastname"></asp:Label>
            </div>
            <div class="col-sm-6 text-center">
                <asp:TextBox ID="txtlastname" Height="27px" class="form-control"  runat="server" Width="258px"></asp:TextBox>
            </div>
        </div>
             <br />
         <div class="row">
            <div class="col-sm-6 text-center">
                <asp:Label ID="Label3" runat="server"  Font-Bold="True" Font-Size="Medium" Text="Email"></asp:Label>
            </div>
            <div class="col-sm-6 text-center">
                <asp:TextBox ID="txtemailaddress" class="form-control" Height="27px" runat="server" Width="258px" TextMode="Email"></asp:TextBox>
            </div>
        </div>
             <br />
                 <div class="row">
            <div class="col-sm-6 text-center">
                 <asp:Label ID="Label4" runat="server"  Font-Bold="True" Font-Size="Medium" Text="Contact number"></asp:Label>
            </div>
            <div class="col-sm-6 text-center">
              <asp:TextBox ID="txtcontactno" Height="27px" class="form-control" runat="server" Width="258px"></asp:TextBox>
            </div>
        </div>
            <br />
        <div class="row">
            <div class="col-sm-12 text-center">
                 <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Text="Submit" Width="135px" Height="41px" OnClick="Button1_Click" BackColor="Red" />
            </div>
        </div>
    </div>
 
</asp:Content>
