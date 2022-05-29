<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentSchedule.aspx.cs" Inherits="Regestration.WebForm13" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label2" runat="server" Font-Names="Arial Black" 
            Font-Size="Medium" ForeColor="#006699" Text="Schedule:"></asp:Label>
</p>
    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="scheduleNo" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="scheduleNoLabel" runat="server" Text='<%# Eval("scheduleNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DayLabel" runat="server" Text='<%# Eval("Day") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FtimeLabel" runat="server" Text='<%# Eval("Ftime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TtimeLabel" runat="server" Text='<%# Eval("Ttime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseNameLabel" runat="server" Text='<%# Eval("CourseName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseTypeLabel" runat="server" Text='<%# Eval("CourseType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DoctorNameLabel" runat="server" Text='<%# Eval("DoctorName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AssisstantNameLabel" runat="server" Text='<%# Eval("AssisstantName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomidLabel" runat="server" Text='<%# Eval("Roomid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GroupLabel" runat="server" Text='<%# Eval("Group") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="scheduleNoLabel1" runat="server" Text='<%# Eval("scheduleNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FtimeTextBox" runat="server" Text='<%# Bind("Ftime") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TtimeTextBox" runat="server" Text='<%# Bind("Ttime") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseNameTextBox" runat="server" Text='<%# Bind("CourseName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseTypeTextBox" runat="server" Text='<%# Bind("CourseType") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DoctorNameTextBox" runat="server" Text='<%# Bind("DoctorName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AssisstantNameTextBox" runat="server" Text='<%# Bind("AssisstantName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomidTextBox" runat="server" Text='<%# Bind("Roomid") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="GroupTextBox" runat="server" Text='<%# Bind("Group") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="scheduleNoTextBox" runat="server" Text='<%# Bind("scheduleNo") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DayTextBox" runat="server" Text='<%# Bind("Day") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FtimeTextBox" runat="server" Text='<%# Bind("Ftime") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TtimeTextBox" runat="server" Text='<%# Bind("Ttime") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseNameTextBox" runat="server" Text='<%# Bind("CourseName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CourseTypeTextBox" runat="server" Text='<%# Bind("CourseType") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DoctorNameTextBox" runat="server" Text='<%# Bind("DoctorName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AssisstantNameTextBox" runat="server" Text='<%# Bind("AssisstantName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomidTextBox" runat="server" Text='<%# Bind("Roomid") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="GroupTextBox" runat="server" Text='<%# Bind("Group") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="scheduleNoLabel" runat="server" Text='<%# Eval("scheduleNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DayLabel" runat="server" Text='<%# Eval("Day") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FtimeLabel" runat="server" Text='<%# Eval("Ftime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TtimeLabel" runat="server" Text='<%# Eval("Ttime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseNameLabel" runat="server" Text='<%# Eval("CourseName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseTypeLabel" runat="server" Text='<%# Eval("CourseType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DoctorNameLabel" runat="server" Text='<%# Eval("DoctorName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AssisstantNameLabel" runat="server" Text='<%# Eval("AssisstantName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomidLabel" runat="server" Text='<%# Eval("Roomid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GroupLabel" runat="server" Text='<%# Eval("Group") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">scheduleNo</th>
                                    <th runat="server">Day</th>
                                    <th runat="server">Ftime</th>
                                    <th runat="server">Ttime</th>
                                    <th runat="server">CourseName</th>
                                    <th runat="server">CourseType</th>
                                    <th runat="server">DoctorName</th>
                                    <th runat="server">AssisstantName</th>
                                    <th runat="server">Roomid</th>
                                    <th runat="server">Group</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="scheduleNoLabel" runat="server" Text='<%# Eval("scheduleNo") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DayLabel" runat="server" Text='<%# Eval("Day") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FtimeLabel" runat="server" Text='<%# Eval("Ftime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TtimeLabel" runat="server" Text='<%# Eval("Ttime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseNameLabel" runat="server" Text='<%# Eval("CourseName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseTypeLabel" runat="server" Text='<%# Eval("CourseType") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DoctorNameLabel" runat="server" Text='<%# Eval("DoctorName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AssisstantNameLabel" runat="server" Text='<%# Eval("AssisstantName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomidLabel" runat="server" Text='<%# Eval("Roomid") %>' />
                    </td>
                    <td>
                        <asp:Label ID="GroupLabel" runat="server" Text='<%# Eval("Group") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [scheduleA]"></asp:SqlDataSource>
</p>
    <p>
    <br />
</p>
</asp:Content>
