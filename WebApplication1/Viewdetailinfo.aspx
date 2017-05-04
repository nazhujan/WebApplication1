<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Viewdetailinfo.aspx.cs" Inherits="WebApplication1.Viewdetailinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        color: #990000;
    }
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        width: 711px;
        text-align: right;
        height: 45px;
    }
    .auto-style4 {
        width: 711px;
        text-align: right;
        height: 57px;
    }
    .auto-style5 {
        height: 57px;
    }
    .auto-style6 {
        width: 711px;
        text-align: right;
        height: 47px;
    }
    .auto-style7 {
        height: 47px;
    }
    .auto-style8 {
        height: 45px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style1">View Detail Info </h1>
<table class="auto-style2">
    <tr>
        <td class="auto-style4">Nama pemegang akaun :&nbsp; </td>
        <td class="auto-style5" style="text-align: left">
            <asp:TextBox ID="TextBox1" runat="server" style="text-align: center"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Gender :</td>
        <td class="auto-style7" style="text-align: left">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Age :</td>
        <td class="auto-style8" style="text-align: left">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
</table>
<p class="auto-style1">
    Account Id :
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="218px" Width="633px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="accountType" HeaderText="accountType" SortExpression="accountType" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="uspSelectAllFromcustAccount" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox4" Name="id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
<p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p class="auto-style1">
    &nbsp;</p>
</asp:Content>
