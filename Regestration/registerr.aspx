<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="registerr.aspx.cs" Inherits="Regestration.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        font-family: "Arial Black";
        font-size: medium;
        color: #000066;
    }
        .auto-style7 {
            margin-right: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Names="Arial Black" Font-Size="Medium" 
        ForeColor="#000066" Text="register:"></asp:Label>
    </p>
<p class="auto-style6">
    click on schedule you wnt to register in :
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Type" DataValueField="Type" Height="16px" Width="139px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Type] FROM [Groups]"></asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" CellPadding="4" CssClass="auto-style7" ForeColor="#333333" GridLines="None" Height="246px" Width="427px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="StartDay" HeaderText="StartDay" SortExpression="StartDay" />
            <asp:BoundField DataField="EndDay" HeaderText="EndDay" SortExpression="EndDay" />
            <asp:BoundField DataField="fTime" HeaderText="fTime" SortExpression="fTime" />
            <asp:BoundField DataField="tTime" HeaderText="tTime" SortExpression="tTime" />
            <asp:BoundField DataField="Group" HeaderText="Group" SortExpression="Group" />
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            <%--<asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>--%>
  
            <asp:ButtonField ButtonType="Button" CommandName="Cancel" Text="Cancel" />
  
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
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
    </asp:CheckBoxList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SCHEDULE] WHERE ([Group] = @Group)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Group" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial Nova Light" Font-Size="Medium" ForeColor="#006699" Height="50px" OnClick="Button1_Click" Text="Submit Registeration" Width="189px" />
</p>
    <p>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
</p>
<p>
</p>
</asp:Content>
