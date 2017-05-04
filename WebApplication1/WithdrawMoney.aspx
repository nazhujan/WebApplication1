<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WithdrawMoney.aspx.cs" Inherits="WebApplication1.WithdrawMoney" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        color: #800000;
        font-size: xx-large;
    }
    .auto-style2 {
        width: 81%;
        height: 225px;
    }
    .auto-style3 {
        width: 613px;
    }
    .auto-style4 {
        width: 613px;
        text-align: right;
    }
    .auto-style5 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
    <strong>Withdraw Money </strong>
</p>
<table class="auto-style2">
    <tr>
        <td class="auto-style4">Account Balance : </td>
        <td style="text-align: left">RM
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Withdraw Amount : </td>
        <td style="text-align: left">RM
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Proceed " />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Current Balance :</td>
        <td class="auto-style5">RM
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
