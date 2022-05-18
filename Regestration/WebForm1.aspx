<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Regestration.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DDP</title>
    <style type ="text/css">
        #nav
        {
            margin:0px;
        }

         #nav ul
        {
            padding:0px;
            list-style:none;
        }

          #nav ul li
        {
            float:left;
            text-align:left;
            width:120px;
            margin:1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="nav">
            <ul>
                <li><a href ="HomeWeb.html">Home</a></li>
                  <li><a href ="Newevents.html">New Events</a></li>
                  <li><a href ="personSignUP.aspx">Sign UP</a></li>
                 <ul>
                <li><a href ="personSignUP.aspx">STUDENT SIGN UP</a></li>
                     <li><a href ="personSignUP.aspx">STAFF SIGN UP</a></li>
                     </ul>
            </ul>
        </div>
    </form>
</body>
</html>
