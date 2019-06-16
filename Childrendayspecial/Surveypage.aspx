<%@ Page Title="" Language="C#" MasterPageFile="~/Coverpage.Master" AutoEventWireup="true" CodeBehind="Surveypage.aspx.cs" Inherits="Childrendayspecial.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                Hi
           <asp:Label ID="lblfirstname" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC00" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lbllastname" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC00" Visible="False"></asp:Label>
           <br />
           Please answer the following questions based upon Sikhism<br />
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" Visible="False"></asp:Label>
                <br />
               
            <asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#336600" Visible="False"></asp:Label>
                <br />
            <asp:Button ID="btnreviewresult" runat="server" BackColor="Red" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="44px" OnClick="btnreviewresult_Click" Text="Click here to review answers" Visible="False" Width="390px" />
                <br />
&nbsp;
           <asp:Label ID="lblemail" runat="server" Visible="False"></asp:Label>
           <br />
           <asp:Label ID="lblcontactno" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Visible="False"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 ques">
                1. What is the Sikh holy book called? <br />
               <asp:RadioButton ID="rdbtnq11"  CssClass="Space" runat="server" CausesValidation="True" Text="  Guru Granth" ValidationGroup="ques1" GroupName="ques1" OnCheckedChanged="rdbtnq11_CheckedChanged" BorderStyle="None" />
           &nbsp;<br />
               <asp:RadioButton ID="rdbtnq12"  CssClass="Space" runat="server" Text="Guru Sahib Granth" ValidationGroup="ques1" GroupName="ques1" OnCheckedChanged="rdbtnq12_CheckedChanged" BorderStyle="None" />
           <br />
               <asp:RadioButton ID="rdbtnq13"  CssClass="Space" runat="server" Text="Guru Sahib" ValidationGroup="ques1" GroupName="ques1" BorderStyle="None" />
           <br />
               <asp:RadioButton ID="rdbtnq14"  CssClass="Space" runat="server" Text="Guru Granth Sahib" ValidationGroup="ques1" GroupName="ques1" BorderStyle="None" />
           &nbsp;<asp:Label ID="lblcorrect1"   runat="server" Font-Bold="True" ForeColor="#0033CC" Text="Correct" Visible="False"></asp:Label>
           <br />
           <asp:Label ID="lblans1" runat="server" Font-Bold="True" Visible="False"></asp:Label>
           <br />
           <asp:HyperLink ID="hlansreview1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" NavigateUrl="https://en.wikipedia.org/wiki/Guru_Granth_Sahib" Visible="False">https://en.wikipedia.org/wiki/Guru_Granth_Sahib</asp:HyperLink>
           <br />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 ques">
                2.Who was the founder of Sikhism?
           <br />
           <asp:RadioButton ID="rdbtnq21" CssClass="Space" runat="server" CausesValidation="True"  Text="Guru Govind Singh" Font-Size="Medium" ForeColor="Black" ValidationGroup="ques2" GroupName="ques2" />
           <br />
           <asp:RadioButton ID="rdbtnq22" CssClass="Space" runat="server" CausesValidation="True" Text="Guru Amardas Ji" ValidationGroup="ques2" GroupName="ques2" />
           <br />
           <asp:RadioButton ID="rdbtnq23" CssClass="Space" runat="server" CausesValidation="True" Text="Guru Arjun Ji" ValidationGroup="ques2" GroupName="ques2" />
           <br />
           <asp:RadioButton ID="rdbtnq24" CssClass="Space" runat="server" CausesValidation="True" Text="Guru Nanak Dev Ji" ValidationGroup="ques2" GroupName="ques2" />
           &nbsp;<asp:Label ID="lblcorrect2" runat="server" Font-Bold="True" ForeColor="#0033CC" Text="Correct" Visible="False"></asp:Label>
           <br />
           <asp:Label ID="lblans2" runat="server" Font-Bold="True" Visible="False"></asp:Label>
           <br />
           <asp:HyperLink ID="hlansreview2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" NavigateUrl="https://en.wikipedia.org/wiki/History_of_Sikhism" Visible="False">https://en.wikipedia.org/wiki/History_of_Sikhism</asp:HyperLink>
           <br />
            </div>
                
        </div>
        <div class="row">
            <div class="col-sm-12 ques">
3.Where did the Sikh religion originate?
           <br />
           
          <asp:RadioButton ID="rdbtnq31" CssClass="Space" runat="server" CausesValidation="True"  Text="Punjab" ValidationGroup="ques3" GroupName="ques3" />
           &nbsp;<asp:Label ID="lblcorrect3"  runat="server" Font-Bold="True" ForeColor="#0033CC" Text="Correct" Visible="False"></asp:Label>
           <br />
           <asp:RadioButton ID="rdbtnq32" CssClass="Space" runat="server" CausesValidation="True" Text=" Bangladesh" ValidationGroup="ques3" GroupName="ques3" />
           <br />
           <asp:RadioButton ID="rdbtnq33" CssClass="Space" runat="server" CausesValidation="True" Text="New Zealand" ValidationGroup="ques3" GroupName="ques3" />
           <br />
           <asp:RadioButton ID="rdbtnq34" CssClass="Space" runat="server" CausesValidation="True" Text=" America" ValidationGroup="ques3" GroupName="ques3" />        
           <br />
           <asp:Label ID="lblans3" runat="server" Font-Bold="True" Visible="False"></asp:Label>
           <br />
           <asp:HyperLink ID="hlansreview3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" NavigateUrl="https://en.wikipedia.org/wiki/Sikhism" Visible="False">https://en.wikipedia.org/wiki/Sikhism</asp:HyperLink>
           <br />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 ques">
                4.What is the name of room in which all Sikhs eat together?
           <br />
           
          <asp:RadioButton ID="rdbtnq41" CssClass="Space" runat="server" CausesValidation="True"  Text=" Adi Granth" ValidationGroup="ques4" GroupName="ques4" />
           <br />
           <asp:RadioButton ID="rdbtnq42" CssClass="Space" runat="server" CausesValidation="True" Text="Nishan sahib " ValidationGroup="ques4" GroupName="ques4" />
           <br />
           <asp:RadioButton ID="rdbtnq43" CssClass="Space" runat="server" CausesValidation="True" Text=" Langar Hall" ValidationGroup="ques4" GroupName="ques4" />
           &nbsp;<asp:Label ID="lblcorrect4" runat="server" Font-Bold="True" ForeColor="#0033CC" Text="Correct" Visible="False"></asp:Label>
           <br />
           <asp:RadioButton ID="rdbtnq44" CssClass="Space" runat="server" CausesValidation="True" Text="Takht" ValidationGroup="ques4" GroupName="ques4" />        
           <br />
           <asp:Label ID="lblans4" runat="server" Font-Bold="True" Visible="False"></asp:Label>
           <br />
           <asp:HyperLink ID="hlansreview4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" NavigateUrl="http://www.sikhmissionarysociety.org/sms/smspublications/thesikhsandtheirwayoflife/chapter5/" Visible="False">http://www.sikhmissionarysociety.org/sms/smspublications/thesikhsandtheirwayoflife/chapter5/</asp:HyperLink>
           <br />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 ques">
                5.Who is the 10th Guru of Sikhs?
            <br />
           
          <asp:RadioButton ID="rdbtnq51" CssClass="Space" runat="server" CausesValidation="True"  Text=" Guru Arjan Dev Ji" ValidationGroup="ques5" GroupName="ques5" />
           <br />
           <asp:RadioButton ID="rdbtnq52" CssClass="Space" runat="server" CausesValidation="True" Text=" Guru Har Rai Ji" ValidationGroup="ques5" GroupName="ques5" />
           <br />
           <asp:RadioButton ID="rdbtnq53" CssClass="Space" runat="server" CausesValidation="True" Text=" Guru Gobind Singh Ji" ValidationGroup="ques5" GroupName="ques5" />
           &nbsp;<asp:Label ID="lblcorrect5" runat="server" Font-Bold="True" ForeColor="#0033CC" Text="Correct" Visible="False"></asp:Label>
           <br />
           <asp:RadioButton ID="rdbtnq54" CssClass="Space" runat="server" CausesValidation="True" Text="Guru Nanak Dev Ji" ValidationGroup="ques5" GroupName="ques5" />    
            <br />
            <asp:Label ID="lblans5" runat="server" Font-Bold="True" Visible="False"></asp:Label>
            <br />
            <asp:HyperLink ID="hlansreview5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" NavigateUrl="https://en.wikipedia.org/wiki/Guru_Gobind_Singh" Visible="False">https://en.wikipedia.org/wiki/Guru_Gobind_Singh</asp:HyperLink>
            <br />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 ques">
                6. How many Gurus do Sikhs have?
            <br />
           
          <asp:RadioButton ID="rdbtnq61" CssClass="Space" runat="server" CausesValidation="True"  Text="5" ValidationGroup="ques6" GroupName="ques6" />
           <br />
           <asp:RadioButton ID="rdbtnq62" CssClass="Space" runat="server" CausesValidation="True" Text="11" ValidationGroup="ques4" GroupName="ques6" />
           &nbsp;<asp:Label ID="lblcorrect6" runat="server" Font-Bold="True" ForeColor="#0033CC" Text="Correct" Visible="False"></asp:Label>
           <br />
           <asp:RadioButton ID="rdbtnq63" CssClass="Space" runat="server" CausesValidation="True" Text="7" ValidationGroup="ques4" GroupName="ques6" />
           <br />
           <asp:RadioButton ID="rdbtnq64" CssClass="Space" runat="server" CausesValidation="True" Text="10" ValidationGroup="ques4" GroupName="ques6" />    
            <br />
            <asp:Label ID="lblans6" runat="server" Font-Bold="True" Visible="False"></asp:Label>
            <br />
            <asp:HyperLink ID="hlansreview6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" NavigateUrl="https://en.wikipedia.org/wiki/Sikh_gurus" Visible="False">https://en.wikipedia.org/wiki/Sikh_gurus</asp:HyperLink>
            
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 text-center">
            <asp:Button ID="btnsubmit" runat="server" BackColor="Red" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="44px" OnClick="Button1_Click" Text="Submit" Width="141px" />
            <br />
            <br />
            <asp:Button ID="btnnxt" runat="server" BackColor="Red" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="46px" OnClick="Button2_Click" Text="Next" Visible="False" Width="288px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </div>
    
</asp:Content>
