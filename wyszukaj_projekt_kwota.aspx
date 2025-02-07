<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="wyszukaj_projekt_kwota.aspx.cs" Inherits="WebApplication2.wyszukaj_projekt_kwota" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT rodzaj.nazwa_rodzaj, status.nazwa_status, projekt.nr_projekt, projekt.temat_projekt, projekt.data_rozpoczecia, projekt.data_zakonczenia, projekt.kwota, projekt.uwagi, projekt.ID_projekt, projekt.ID_status FROM projekt INNER JOIN rodzaj ON projekt.ID_rodzaj = rodzaj.ID_rodzaj INNER JOIN status ON projekt.ID_status = status.ID_status"></asp:SqlDataSource>
    </p>
    <p>
        kwota od:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kwota do:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID_projekt" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nazwa_rodzaj" HeaderText="rodzaj projektu" SortExpression="nazwa_rodzaj" />
                <asp:BoundField DataField="nazwa_status" HeaderText="status projektu" SortExpression="nazwa_status" />
                <asp:BoundField DataField="nr_projekt" HeaderText="nr projektu" SortExpression="nr_projekt" />
                <asp:BoundField DataField="temat_projekt" HeaderText="temat projektu" SortExpression="temat_projekt" />
                <asp:BoundField DataField="data_rozpoczecia" DataFormatString="{0:d}" HeaderText="data rozpoczecia" SortExpression="data_rozpoczecia" />
                <asp:BoundField DataField="data_zakonczenia" DataFormatString="{0:d}" HeaderText="data zakonczenia" SortExpression="data_zakonczenia" />
                <asp:BoundField DataField="kwota" HeaderText="kwota" SortExpression="kwota" />
                <asp:BoundField DataField="uwagi" HeaderText="uwagi" SortExpression="uwagi" />
                <asp:BoundField DataField="ID_projekt" HeaderText="ID_projekt" InsertVisible="False" ReadOnly="True" SortExpression="ID_projekt" Visible="False" />
                <asp:BoundField DataField="ID_status" HeaderText="ID_status" SortExpression="ID_status" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
