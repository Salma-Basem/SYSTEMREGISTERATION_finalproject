<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentSCHEDULE.aspx.cs" Inherits="Regestration.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="Label4" runat="server" Font-Names="Arial Black" Font-Size="Medium" 
        ForeColor="#000066" Text="Enter Your Preferences:"></asp:Label>
        <br />
    </p>
    <p>
    <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Medium" 
        ForeColor="#000066" Text="Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTE" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Medium" 
        ForeColor="#000066" Text="Phone:"></asp:Label>
        <asp:TextBox ID="TXTP" runat="server"></asp:TextBox>
    </p>
    <p>
    <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Font-Size="Medium" ForeColor="#000066" 
        onclick="btnSubmit_Click" Text="Submit" />
    </p>
    <p>
        <asp:GridView ID="gdvSchedule" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="StartDay" HeaderText="StartDay" SortExpression="StartDay" />
                <asp:BoundField DataField="EndDay" HeaderText="EndDay" SortExpression="EndDay" />
                <asp:BoundField DataField="fTime" HeaderText="fTime" SortExpression="fTime" />
                <asp:BoundField DataField="tTime" HeaderText="tTime" SortExpression="tTime" />
                <asp:BoundField DataField="Group" HeaderText="Group" SortExpression="Group" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:CommandField ShowSelectButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT  * FROM SCHEDULE"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
    <asp:Button ID="btnRegister" runat="server" Font-Bold="True" 
        Font-Names="Arial Black" Font-Size="Medium" ForeColor="#000066" Text="Register" 
        Visible="False" onclick="btnBook_Click" />
    </p>
<p>
    <asp:Label ID="lblMsg" runat="server" Font-Names="Monotype Corsiva" Font-Size="X-Large" 
        ForeColor="#CC0000" Font-Bold="True"></asp:Label>
    </p>
<p>
    <asp:Label ID="lblCurrent" runat="server" Font-Names="Arial Black" Font-Size="Medium" 
        ForeColor="#000066" Text="Current Bookings:" Visible="False"></asp:Label>
    </p>
<asp:GridView ID="gdvRegister" runat="server">
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:Button ID="btnConfirm" runat="server" Font-Names="Arial Black" 
        Font-Size="Medium" ForeColor="#000066" onclick="btnConfirm_Click" 
        Text="Confirm Your Booking" Visible="False" />
    </asp:Content>
