<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="DepositMoney.aspx.cs" Inherits="WebApplication1.DepositMoney" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #800000;
        }
        .auto-style3 {
            width: 79%;
            height: 244px;
        }
        .auto-style4 {
            width: 674px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style1">
        <strong>Deposit Money </strong>
    </p>
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">Account Balance : </td>
            <td style="text-align: left">&nbsp;RM
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Deposit Amount :&nbsp; </td>
            <td style="text-align: left">RM
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Done" runat="server" Height="26px" OnClick="Done_Click" Text="Proceed " Width="69px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Current Balance :</td>
            <td style="text-align: left">RM
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td style="text-align: left">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
