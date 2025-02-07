<%@ Page Title="projekt szczegoly" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="projekt_szczegoly_nt.aspx.cs" Inherits="WebApplication2.projekt_szczegoly_nt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT rodzaj.nazwa_rodzaj, status.nazwa_status, projekt.nr_projekt, projekt.temat_projekt, projekt.data_rozpoczecia, projekt.data_zakonczenia, projekt.kwota, projekt.uwagi, projekt.ID_projekt FROM projekt INNER JOIN rodzaj ON projekt.ID_rodzaj = rodzaj.ID_rodzaj INNER JOIN status ON projekt.ID_status = status.ID_status WHERE (projekt.ID_projekt = @ID_projekt)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID_projekt" QueryStringField="ID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        aby powrocic do wyszukiwania projektow kliknij
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/wyszukaj_projekt_nr.aspx">tutaj</asp:HyperLink>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID_projekt" DataSourceID="SqlDataSource1" EmptyDataText="brak projektu do wyswietlania" ForeColor="#333333" GridLines="None" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="nazwa_rodzaj" HeaderText="rodzaj projektu" SortExpression="nazwa_rodzaj" />
                <asp:BoundField DataField="nazwa_status" HeaderText="status projektu" SortExpression="nazwa_status" />
                <asp:BoundField DataField="nr_projekt" HeaderText="nr projektu" SortExpression="nr_projekt" />
                <asp:BoundField DataField="temat_projekt" HeaderText="temat projektu" SortExpression="temat_projekt" />
                <asp:BoundField DataField="data_rozpoczecia" DataFormatString="{0:d}" HeaderText="data rozpoczecia" SortExpression="data_rozpoczecia" />
                <asp:BoundField DataField="data_zakonczenia" HeaderText="data zakonczenia" SortExpression="data_zakonczenia" />
                <asp:BoundField DataField="kwota" HeaderText="kwota" SortExpression="kwota" />
                <asp:BoundField DataField="uwagi" HeaderText="uwagi" SortExpression="uwagi" />
                <asp:BoundField DataField="ID_projekt" HeaderText="ID_projekt" InsertVisible="False" ReadOnly="True" SortExpression="ID_projekt" Visible="False" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
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
