<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webIndex.aspx.cs" Inherits="Web_Finalproject.Index" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 194px;
            height: 98px;
        }
        .auto-style5 {
            width: 362px;
            height: 98px;
        }
        .auto-style13 {
            width: 658px;
            height: 98px;
        }
        .auto-style16 {
            width: 866px;
            height: 98px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="background-color: #C0C0C0; background-image: inherit; border-style: double; border-width: medium">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" Height="126px" ImageUrl="~/webImages/FUE LOGO.jpg" Width="123px" />
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Small" ForeColor="Black" Text="About Us"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="Admission Requirements">Overview</asp:ListItem>
                            <asp:ListItem>Contact Us</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Small" ForeColor="Black" Text="Admission"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="Admission Requirements">Admission Requirements</asp:ListItem>
                            <asp:ListItem>Admission Regulations</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style13">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000066" NavigateUrl="~/SignaUpp.aspx">Sign Up</asp:HyperLink>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Small" ForeColor="Black" Text="Faculties"></asp:Label>
                        <asp:DropDownList ID="DropDownList4" runat="server" Width="167px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Computer Science</asp:ListItem>
                            <asp:ListItem>Dentistry</asp:ListItem>
                            <asp:ListItem>Political Science</asp:ListItem>
                            <asp:ListItem>Bussiness</asp:ListItem>
                            <asp:ListItem>Pharmacy</asp:ListItem>
                            <asp:ListItem>Physical Therapy</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#000066" NavigateUrl="~/SignaUpp.aspx">Sign Up</asp:HyperLink>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
