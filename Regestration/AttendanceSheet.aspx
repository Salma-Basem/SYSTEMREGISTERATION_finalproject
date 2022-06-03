<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="AttendanceSheet.aspx.cs" Inherits="Regestration.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <table class="auto-style4">
        <tr>
    <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#003366" Text="Select Day"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlAttendance" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Days" DataValueField="Days" Font-Names="Arial" Font-Size="Medium" ForeColor="#003366">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Days] FROM [Attendance]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" Font-Names="Arial" Font-Size="Medium" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Attendance] WHERE ([Days] = @Days)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlAttendance" Name="Days" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
        </asp:SqlDataSource>
                <br />
            </td>
        </tr>
         
    </table>
    
</asp:Content>
