<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentCourseDetails.aspx.cs" Inherits="Regestration.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
       name <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
       code <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
        Type <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
        <a href ="StudentCourses.aspx" runat="server"> RETURN TO MY COURSES </a>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
