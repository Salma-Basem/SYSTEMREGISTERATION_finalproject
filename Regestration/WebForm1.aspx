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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="nav">
            <ul>
                  <li><a href ="HomeWeb.html">Home</a></li>
                  <li><a href ="Newevents.html">New Events</a></li>
                  <li><a href ="personSignUP.aspx">Sign UP</a>
                      <ul>
                     <li><a href ="personSignUP.aspx">STUDENT SIGN UP</a></li>
                     <li><a href ="personSignUP.aspx">STAFF SIGN UP</a></li>
                     </ul>
                      </li>
                 <li><a href ="personSignUP.aspx">About us</a></li>
                      
            </ul>
        </div>
    </form>
</body>
</html>
