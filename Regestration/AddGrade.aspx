<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="AddGrade.aspx.cs" Inherits="Regestration.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="auto-style4" style="background-color: #ffffff">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#003366" Text="User Name"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtUName" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#003366"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#003366" Text="Course"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddlCourse" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CourseCode" DataValueField="CourseCode">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [CourseCode] FROM [AssignmentDoctortGrade]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#003366" Text="Grade"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtGrade" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#003366"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Large" ForeColor="#000066" OnClick="Button1_Click1" Text="Add" />
               </td>
        </tr>
    </table>
</asp:Content>
