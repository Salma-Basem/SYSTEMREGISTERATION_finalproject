<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentCourseRegisteration.aspx.cs" Inherits="Regestration.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Names="Arial Black" 
            Font-Size="Medium" ForeColor="#006699" Text="Course Registeration:"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Names="Arial Black" 
            Font-Size="Medium" ForeColor="Gray" Text="Select Courses You want to register  in :"></asp:Label>
    &nbsp;</p>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" Font-Bold="True" Font-Names="Arial Nova Light" ForeColor="#006699">
    </asp:CheckBoxList>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Course]"></asp:SqlDataSource>
    <p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit Registeration" Height="41px" Width="181px" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="#333333" />
    </p>
<p>
    &nbsp;</p>
<p>
    <br />

    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" ForeColor="#333333"></asp:Label>
    <br /></p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </asp:Content>
