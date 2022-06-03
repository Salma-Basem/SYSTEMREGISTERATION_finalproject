<%@ Page Title="" Language="C#" MasterPageFile="~/AssisstantMaster.Master" AutoEventWireup="true" CodeBehind="AttendanceAssistant.aspx.cs" Inherits="Regestration.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#003366" Text="Select Day"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlAAttendance" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Days" DataValueField="Days" Font-Names="Arial" Font-Size="Medium" ForeColor="#003366">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Days] FROM [Attendance]"></asp:SqlDataSource>
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#003366" Text="Select Course"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlCourse" runat="server" AutoPostBack="True" ForeColor="#003366" DataSourceID="SqlDataSource5" DataTextField="CourseCode" DataValueField="CourseCode">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [CourseCode] FROM [AssistantAttendance]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Name] FROM [Course]"></asp:SqlDataSource>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource4" Font-Names="Arial" Font-Size="Medium" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                    <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" ShowHeader="True" />
                    <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Attendance] WHERE (([Days] = @Days) AND ([CourseID] = @CourseID))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlAAttendance" Name="Days" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddlCourse" Name="CourseID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
        </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AssistantAttendance]">
            </asp:SqlDataSource>
        </td>
    </tr>
    </p>
</asp:Content>
