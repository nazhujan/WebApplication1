<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Create Bank Account.aspx.cs" Inherits="WebApplication1.Create_Bank_Account" %>

<script runat="server">

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style6
    {
        text-align: left;
    }
    .style7
    {
        text-align: left;
        width: 450px;
    }
    .style8
    {
        text-align: left;
        height: 26px;
    }
    .style9
    {
        height: 26px;
    }
    .style10
    {
        text-align: left;
        height: 26px;
    }
    .style11
    {
        text-align: left;
        width: 450px;
        height: 31px;
    }
    .style12
    {
        height: 31px;
    }
        .auto-style1 {
            text-align: left;
            width: 450px;
            height: 30px;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">
        function validateName(oSrc,args)
        {
            args.IsValid = ((args.Value.length >=10) && (args.Value.length <=50))
        }
    </script>

    <table class="style5">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" Text="Create New Account Bank " 
                style="color: #800000; font-weight: 700; font-size: xx-large"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style6" colspan="2">
            <strong>1.Customer Details</strong></td>
    </tr>
    <tr>
        <td class="style11">
            TITLE:</td>
        <td class="style12">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="16px" 
                RepeatDirection="Horizontal" Width="436px" CausesValidation="True">
                <asp:ListItem>Mr</asp:ListItem>
                <asp:ListItem>Mrs</asp:ListItem>
                <asp:ListItem>Ms</asp:ListItem>
                <asp:ListItem>Miss</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label2" runat="server" Text="Name : "></asp:Label>
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="TextBox2" runat="server" style="text-align: left" 
                Width="168px" AutoPostBack="True" CausesValidation="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;
            &nbsp;
            </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="Age :"></asp:Label>
        </td>
        <td style="text-align: left" class="auto-style2">
            <asp:TextBox ID="TextBox3" runat="server" Width="166px" AutoPostBack="True" 
                CausesValidation="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Please fill family name" 
                ForeColor="Red">Please fill age field</asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="RangeValidator" ForeColor="Red" 
                MaximumValue="100" MinimumValue="16" SetFocusOnError="True" Type="Integer">Age must be between 16 to 100</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label4" runat="server" Text="Gender : "></asp:Label>
        </td>
        <td style="text-align: left">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                CausesValidation="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Please fill age field" 
                ForeColor="Red">Please choose your gender</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label5" runat="server" Text="Full Address : "></asp:Label>
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="TextBox4" runat="server" Height="67px" TextMode="MultiLine" 
                Width="225px" AutoPostBack="True" CausesValidation="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Please fill full address" 
                ForeColor="Red">Please fill Full Address field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style8">
            <asp:Label ID="Label6" runat="server" style="text-align: left" 
                Text="Phone Number : "></asp:Label>
        </td>
        <td class="style9" style="text-align: left">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Phone" Width="174px" 
                AutoPostBack="True" CausesValidation="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Type :
        </td>
        <td class="style9" style="text-align: left">
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="accountType" DataValueField="accountID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [accountType], [accountID] FROM [account]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [account]"></asp:SqlDataSource>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" style="text-align: center" 
                Text="Submit " onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" style="text-align: center" 
                Text="Reset" />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server"></asp:Label>
            <br />
        </td>
    </tr>
</table>
<br />
<br />
<br />
</asp:Content>
