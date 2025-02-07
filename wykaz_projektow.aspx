<%@ Page Title="wykaz projekto" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="wykaz_projektow.aspx.cs" Inherits="WebApplication2.wykaz_projektowy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT rodzaj.nazwa_rodzaj, status.nazwa_status, projekt.nr_projekt, projekt.temat_projekt, projekt.data_rozpoczecia, projekt.data_zakonczenia, projekt.kwota, projekt.uwagi FROM projekt INNER JOIN rodzaj ON projekt.ID_rodzaj = rodzaj.ID_rodzaj INNER JOIN status ON projekt.ID_status = status.ID_status"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="nazwa_rodzaj" HeaderText="rodzaj projektu" SortExpression="nazwa_rodzaj" />
                <asp:BoundField DataField="nazwa_status" HeaderText="status" SortExpression="nazwa_status" />
                <asp:BoundField DataField="nr_projekt" HeaderText="numer projektu" SortExpression="nr_projekt" />
                <asp:BoundField DataField="temat_projekt" HeaderText="temat projektu" SortExpression="temat_projekt" />
                <asp:BoundField DataField="data_rozpoczecia" DataFormatString="{0:d}" HeaderText="data rozpoczecia" SortExpression="data_rozpoczecia" />
                <asp:BoundField DataField="data_zakonczenia" HeaderText="data zakonczenia" SortExpression="data_zakonczenia" />
                <asp:BoundField DataField="kwota" HeaderText="kwota" SortExpression="kwota" />
                <asp:BoundField DataField="uwagi" HeaderText="uwagi" SortExpression="uwagi" />
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
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
