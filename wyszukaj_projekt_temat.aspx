<%@ Page Title="wyszukaj projekt" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="wyszukaj_projekt_temat.aspx.cs" Inherits="WebApplication2.wyszukaj_projekt_temat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        temat projektu:<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="wyszukaj" />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT temat_projekt, ID_projekt FROM projekt WHERE (temat_projekt LIKE + '%' + @temat_projekt + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="temat_projekt" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        aby uzyskac szczegoly kliknij Wybierz a nastempnie kliknij <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/projekt_szczegoly_temat.aspx">tutaj</asp:HyperLink>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID_projekt" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="temat_projekt" HeaderText="temat projektu" SortExpression="temat_projekt" />
                <asp:BoundField DataField="ID_projekt" HeaderText="indyfikator" InsertVisible="False" ReadOnly="True" SortExpression="ID_projekt" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>