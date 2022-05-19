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
            padding:0;
            list-style:none;
        }

          #nav ul li
        {
            float:left;
            text-align:center;
            width:120px;
            margin:1px;
        }

           #nav ul li a
        {   
            color:aquamarine;
            text-decoration:none;
            font-family:'Arial Nova';
            background:#0a0;
            display:block;
            padding:10px;
        }

            #nav ul li a:hover
            {

                 background:#0c0;
                 color:blueviolet;

            }

            #nav ul li ul 
            {
            
             display:none;
            
             }

            #nav ul li:hover ul
            {
                display:block;
            }

        .auto-style1 {
            height: 73px;
        }
        .auto-style2 {
            margin-left: 0px;
        }

        .auto-style3 {
            width: 100px;
        }
        .auto-style4 {
            height: 43px;
        }
        .auto-style5 {
            width: 147px;
        }
        .auto-style6 {
            height: 43px;
            width: 556px;
        }
        .auto-style7 {
            width: 168px;
        }

    </style>
</head>
<body style="height: 80px">
    <form id="form1" runat="server">
        <div id="nav" class="auto-style1">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" Height="100px" ImageUrl="~/webImages/FUE LOGO.jpg" Width="141px" />
            <ul class="auto-style4">
                  <li><a href ="HomeWeb.html" class="auto-style3">Home</a></li>
                  <li><a href ="Newevents.html">New Events</a></li>
                  <li><a href ="personSignUP.aspx">Sign UP</a>
                      <ul>
                     <li><a href ="personSignUP.aspx">STUDENT SIGN UP</a></li>
                     <li><a href ="personSignUP.aspx">STAFF SIGN UP</a></li>
                     </ul>
                      </li>
                 <li style="height: 40px"><a href ="personSignUP.aspx">About us</a></li>
                      
                  <li class="auto-style5">
            <asp:Image ID="Image3" runat="server" CssClass="auto-style2" Height="100px" ImageUrl="~/webImages/FUE LOGO.jpg" Width="141px" />
                  </li>
                  <li>&nbsp;</li>
                      
            </ul>
            <ul class="auto-style6">
                  <li><a href ="HomeWeb.html" class="auto-style3">Home</a></li>
                  <li><a href ="Newevents.html">New Events</a></li>
                  <li><a href ="personSignUP.aspx">Sign UP</a>
                      <ul>
                     <li><a href ="personSignUP.aspx">STUDENT SIGN UP</a></li>
                     <li><a href ="personSignUP.aspx">STAFF SIGN UP</a></li>
                     </ul>
                      </li>
                 <li style="height: 40px"><a href ="personSignUP.aspx" class="auto-style7">About us</a></li>
                      
            </ul>
        </div>
    </form>
</body>
</html>
