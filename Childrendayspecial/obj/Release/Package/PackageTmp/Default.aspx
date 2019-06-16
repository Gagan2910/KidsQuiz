<%@ Page Title="" Language="C#" MasterPageFile="~/Coverpage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Childrendayspecial.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="w3.css" rel="stylesheet" />
    <link href="bootstrap.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <div class="container">
          <div class="row">
        <div class="col-sm-12 subheading">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Childrensday.jpg" Height="104px" Width="415px" ImageAlign="Middle" />
&nbsp;&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/images/sikhism quiz.jpg" Height="104px" Width="415px" ImageAlign="Middle" />
            </div>
        </div>
    <div class="row">
           <div class="col-sm-12 w3-center">
            <img class="headerimage w3-animate-right w3-image" src="images/image2.jpg" height="300px"><img class="headerimage w3-animate-bottom w3-image"  src="images/image3.jpg" height="300px" ><img class="headerimage w3-animate-left w3-image" src="images/image5.jpg" height="300px"><img class="headerimage w3-animate-top w3-image" src="images/image6.jpg" height="300px"><img class="headerimage w3-animate-right w3-image" src="images/image7.jpg" height="300px"><br />
        </div>
        </div>
      
            <div class="row">
        <div class="col-sm-12 subheading">
            <asp:Label ID="Label1" runat="server" BackColor="Yellow" Font-Bold="True" ForeColor="#666666" Text="Please click on Register to win:"></asp:Label>
    &nbsp;<strong><img alt="prezzycard" src="images/prezzy%20card.png" style="width: 172px; height: 88px" /> <asp:Label ID="Label2" runat="server" BackColor="Yellow" Font-Bold="True" ForeColor="#666666" Text="worth"></asp:Label>
            </strong>
    <img alt="firstprize" src="images/firstprize.jpg" style="width: 76px; height: 85px" /><asp:Label ID="lblfirstprice" runat="server" BackColor="Yellow" Font-Bold="True" ForeColor="Red" Text="$200"></asp:Label>
            <img alt="secondprize" src="images/secondprize.jpg" style="width: 76px; height: 117px" /><asp:Label ID="lblsecondprice0" runat="server" BackColor="Yellow" Font-Bold="True" ForeColor="Red" Text="$100"></asp:Label>
            <img alt="thirdprice" src="images/thirdprice.jpg" style="width: 82px; height: 115px" /><asp:Label ID="lblthirdprice1" runat="server" BackColor="Yellow" Font-Bold="True" ForeColor="Red" Text="$100"></asp:Label>
            <br />
    <br />
        </div>
                </div>
        </div>
   
<script>
var myIndex = 0;
    carousel();
function carousel() {
    var i;
    var x = document.getElementsByClassName("headerimage");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000);    
}
</script>
 </div>
</asp:Content>
