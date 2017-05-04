<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="WebApplication1.RegisterUser" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style6
    {
        font-size: xx-large;
    }
    .style7
    {
        width: 79%;
        margin-left: 369px;
    }
    .style10
    {
        width: 278px;
        text-align: right;
        height: 52px;
    }
    .style11
    {
        height: 52px;
        width: 533px;
    }
    .style12
    {
        width: 278px;
        text-align: right;
        height: 39px;
    }
    .style13
    {
        height: 39px;
        width: 533px;
    }
    .style14
    {
        width: 278px;
        text-align: right;
        height: 55px;
    }
    .style15
    {
        height: 55px;
        width: 533px;
    }
    .style16
    {
        font-size: xx-large;
        color: #800000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="style16">
    <strong>Register Online User</strong></p>
<table class="style7">
    <tr>
        <td class="style10">
            Username :
        </td>
        <td class="style11" style="text-align: left">
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                CausesValidation="True" style="text-align: left" Width="162px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">Please fill username field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style12">
            Password :</td>
        <td class="style13" style="text-align: left">
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" 
                CausesValidation="True" Width="164px"></asp:TextBox>
            <ajaxToolkit:PasswordStrength ID="TextBox2_PasswordStrength" runat="server" 
                TargetControlID="TextBox2" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                ForeColor="Red">Please fill password field</asp:RequiredFieldValidator>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style14">
            Re-enter Password :</td>
        <td class="style15" style="text-align: left">
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" 
                CausesValidation="True" Width="162px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                ErrorMessage="CompareValidator" ForeColor="Red">Wrong password</asp:CompareValidator>
        </td>
    </tr>
</table>
<p class="style6">
    <asp:Button ID="Button1" runat="server" Text="Submit" />
</p>
<p class="style6">
    &nbsp;</p>
</asp:Content>
