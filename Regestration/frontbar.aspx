<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frontbar.aspx.cs" Inherits="Regestration.frontbar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 154px;
        }
        .auto-style2 {
            margin-left: 0px;
        }

        .auto-style3 {
            width: 242px;
        }
        .auto-style4 {
            height: 168px;
            margin-left: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
            <asp:Image ID="Image2" runat="server" CssClass="auto-style2" Height="100px" ImageUrl="~/webImages/FUE LOGO.jpg" Width="240px" />
                </td>
                <td>
                    <ul class="auto-style5">
                  <li class="auto-style4"><a href ="HomeWeb.html" class="auto-style3">Home</a></li>
                  <li><a href ="Newevents.html">New Events</a></li>
                  <li><a href ="personSignUP.aspx">Sign UP</a>
                      <ul>
                     <li><a href ="personSignUP.aspx">STUDENT SIGN UP</a></li>
                     <li><a href ="personSignUP.aspx">STAFF SIGN UP</a></li>
                     </ul>
                      </li>
                 <li style="height: 40px"><a href ="personSignUP.aspx" class="auto-style7">About us</a></li>
                      
            </ul>

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
