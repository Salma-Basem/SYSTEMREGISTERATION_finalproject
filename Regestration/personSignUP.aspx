<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personSignUP.aspx.cs" Inherits="Regestration.personSignUP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
            height: 660px;
            background-image: url('webImages/205-2057548_full-hd-blur-background.jpg');
        }
        .auto-style5 {
            width: 431px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style4">
            <tr>
                <td colspan="5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="XX-Large" ForeColor="White" Text="Sign Up Form Application:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="White" Text="First Name:"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_fn" runat="server" Height="27px" Width="346px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="White" Text="Last Name:"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_ln" runat="server" Height="27px" Width="346px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="White" Text="Gender:"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="23px" RepeatDirection="Horizontal" Width="353px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="White" Text="Email:"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_ln1" runat="server" Height="27px" Width="346px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="White" Text="Phone:"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_ln2" runat="server" Height="27px" Width="346px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="White" Text="Country:"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="349px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Egypt</asp:ListItem>
                        <asp:ListItem>Jordan</asp:ListItem>
                        <asp:ListItem>Syria</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="White" Text="UserName:"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_ln3" runat="server" Height="27px" Width="346px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
