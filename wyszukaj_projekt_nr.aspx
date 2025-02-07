<%@ Page Title="wyszukaj projekt nr" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="wyszukaj_projekt_nr.aspx.cs" Inherits="WebApplication2.wyszukaj_projekt_nr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT nr_projekt, ID_projekt FROM projekt WHERE (nr_projekt LIKE '%' + @nr_projekt + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nr_projekt" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        nr projektu:<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="wyszukaj" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        aby uzyskac szczegoly kliknij Wybierz a nastepnie kliknij<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/projekt_szczegoly_nt.aspx">tutaj</asp:HyperLink>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_projekt" DataSourceID="SqlDataSource1" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="nr_projekt" HeaderText="nr projektu" SortExpression="nr_projekt" />
                <asp:BoundField DataField="ID_projekt" HeaderText="indefikator" InsertVisible="False" ReadOnly="True" SortExpression="ID_projekt" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
