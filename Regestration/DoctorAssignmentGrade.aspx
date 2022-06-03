<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="DoctorAssignmentGrade.aspx.cs" Inherits="Regestration.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 165px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#003366" Text="Select Subject"></asp:Label>
            </td>
        <td>
            <asp:DropDownList ID="ddlSubject" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Code" DataValueField="Code" Font-Names="Arial" Font-Size="Medium" ForeColor="#003366">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Code] FROM [Course]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StudentUserName" DataSourceID="SqlDataSource2" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                    <asp:BoundField DataField="CourseCode" HeaderText="CourseCode" SortExpression="CourseCode" />
                    <asp:BoundField DataField="StudentUserName" HeaderText="StudentUserName" ReadOnly="True" SortExpression="StudentUserName" />
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AssignmentDoctortGrade] WHERE (([CourseCode] = @CourseCode) AND ([CourseCode] = @CourseCode2))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlSubject" Name="CourseCode" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlSubject" Name="CourseCode2" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink6" runat="server" BackColor="#003366" Font-Names="Arial" Font-Size="Medium" ForeColor="White" NavigateUrl="~/AddAssginmentGradeAssistant.aspx">Add Grade</asp:HyperLink>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
