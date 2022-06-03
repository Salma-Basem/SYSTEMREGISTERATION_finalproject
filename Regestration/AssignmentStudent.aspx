<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="AssignmentStudent.aspx.cs" Inherits="Regestration.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
    <br />
                <asp:Label ID="Label1" runat="server" Text="Assignment Upload" Font-Bold="True" Font-Names="Arial Nova Light" ForeColor="Black"></asp:Label>
                <asp:FileUpload ID="fileAssignment" runat="server" CssClass="auto-style13" Width="317px" />
                <br />
                <br />

    </p>
</asp:Content>
