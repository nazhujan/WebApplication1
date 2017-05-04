<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="TransferMoney.aspx.cs" Inherits="TransferMoney" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 101%;
        height: 439px;
    }
    .style7
    {
        }
    .style8
    {
        width: 482px;
        height: 43px;
    }
    .style9
    {
        height: 43px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: x-large; font-weight: bold; color: #800000">
    Transfer Online</p>
<table class="style6">
    <tr>
        <td align="right" class="style8">
            Balance :</td>
        <td align="left" class="style9">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right" class="style7">
            Choose bank :</td>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="110px" 
                Width="173px">
                <asp:ListItem>Within Bank</asp:ListItem>
                <asp:ListItem>Cimb Bank</asp:ListItem>
                <asp:ListItem>Maybank</asp:ListItem>
                <asp:ListItem>Bank Islam</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td align="right" class="style7">
            Account No :</td>
        <td align="left">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="style7">
            Account holder Name :</td>
        <td align="left">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="style7">
            Amount :</td>
        <td align="left">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right" class="style7">
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" />
&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td align="center" class="style7" colspan="2">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right" class="style7">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
        <td align="left">
            &nbsp;&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

