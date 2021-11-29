<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="crudf.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 189px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 144px;
        }
        .auto-style4 {
            width: 144px;
            height: 71px;
        }
        .auto-style5 {
            width: 144px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            height: 23px;
            width: 189px;
        }
        .auto-style8 {
            width: 189px;
            height: 71px;
        }
        .auto-style9 {
            height: 30px;
            width: 189px;
        }
        .auto-style10 {
            margin-right: 0px;
        }
        .auto-style11 {
            height: 23px;
            width: 202px;
        }
        .auto-style12 {
            width: 202px;
            height: 71px;
        }
        .auto-style13 {
            height: 30px;
            width: 202px;
        }
        .auto-style14 {
            height: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="username" runat="server" CssClass="auto-style10" Width="183px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="email" runat="server" Width="181px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="contact" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="password" runat="server" TextMode="Password" Width="179px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                 <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="confirm" runat="server" TextMode="Password" Width="178px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click"/>
&nbsp;&nbsp;
        <asp:Button ID="BtnReset" runat="server" Text="Reset" Onclick="BtnReset_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" />
                <asp:BoundField DataField="Username" HeaderText="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" />
                <asp:BoundField DataField="Password" HeaderText="Password" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True">
                <ControlStyle BackColor="#00CC00" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle BackColor="Red" />
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </form>
</body>
</html>