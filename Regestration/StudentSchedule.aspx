<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentSCHEDULE.aspx.cs" Inherits="Regestration.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style6 {
        font-family: "Arial Black";
        font-size: medium;
        color: #000066;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="Label4" runat="server" Font-Names="Arial Black" Font-Size="Medium" 
        ForeColor="#000066" Text="Enter Your Preferences:"></asp:Label>
        <br />
    </p>
<p class="auto-style6">
    Select Group :
    <asp:DropDownList ID="DDL" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Type" DataValueField="Type" Height="16px" Width="139px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Type] FROM [Groups]"></asp:SqlDataSource>
</p>
<p class="auto-style6">
    Select Course Name :
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" Height="16px" Width="139px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Course]"></asp:SqlDataSource>
</p>
    <p class="auto-style6">
        &nbsp;</p>
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
                <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SCHEDULE] WHERE (([Group] = @Group) AND ([CourseName] = @CourseName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DDL" Name="Group" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="CourseName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Large" ForeColor="#336699" Height="55px" OnClick="Button1_Click" Text="Submit" Width="119px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
    <asp:Label ID="lblMsg" runat="server" Font-Names="Monotype Corsiva" Font-Size="X-Large" 
        ForeColor="Gray" Font-Bold="True" BackColor="White"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    </asp:Content>
