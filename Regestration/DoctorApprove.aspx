<%@ Page Title="" Language="C#" MasterPageFile="~/DoctorMaster.Master" AutoEventWireup="true" CodeBehind="DoctorApprove.aspx.cs" Inherits="Regestration.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#003366" Text="Select ID"></asp:Label>
            </td>
        <td>
            <asp:DropDownList ID="ddlID" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="StudentID" DataValueField="StudentID" Font-Names="Arial" Font-Size="Medium" ForeColor="#003366">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [StudentID] FROM [student]"></asp:SqlDataSource>
        </td>
    
    <tr>
        <td class="auto-style7">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" Font-Names="Arial" Font-Size="Medium" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Enroll] WHERE ([StudentID] = @StudentID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlID" Name="StudentID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
        </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <br />
            <asp:Button ID="btn" runat="server" BackColor="#003366" Font-Names="Arial Black" Font-Size="Medium" ForeColor="White" OnClick="btnSubmit_Click" Text="Approve" />
            <br />
            <br />
            <asp:Label ID="lblMsg" runat="server" Font-Names="Arial Black" Font-Overline="False" Font-Size="Large" ForeColor="#003366"></asp:Label>
        </td>
    </tr>
    </p>
   

</asp:Content>
