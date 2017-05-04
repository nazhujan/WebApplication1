<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="PurchaseOnline.aspx.cs" Inherits="PurchaseOnline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 98%;
            height: 475px;
        }
        .style7
        {
        }
        .style8
        {
            height: 47px;
        }
        .style9
        {
            height: 55px;
        }
        .style10
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-size: x-large; font-weight: bold; color: #800000">
        Purchase Online</p>
    <table class="style6">
        <tr>
            <td align="right" class="style7">
                Item ordered :</td>
            <td align="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Price :</td>
            <td align="left">
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                Quantity :</td>
            <td align="left" class="style10">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style8" colspan="2">
&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Calculate Total Price" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style9">
                Total :</td>
            <td align="left" class="style9">
                RM
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7" colspan="2">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Make Payment" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Balance :</td>
            <td align="left">
                RM
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Total Payment :</td>
            <td align="left">
                RM
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                Balance after payment :</td>
            <td align="left">
                RM
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

