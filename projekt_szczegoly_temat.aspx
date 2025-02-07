<%@ Page Title="projekt szczegoly" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="projekt_szczegoly_temat.aspx.cs" Inherits="WebApplication2.projekt_szczegoly_temat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT rodzaj.nazwa_rodzaj, status.nazwa_status, projekt.nr_projekt, projekt.temat_projekt, projekt.data_rozpoczecia, projekt.data_zakonczenia, projekt.kwota, projekt.uwagi, projekt.ID_status FROM projekt INNER JOIN rodzaj ON projekt.ID_rodzaj = rodzaj.ID_rodzaj INNER JOIN status ON projekt.ID_status = status.ID_status WHERE (projekt.ID_status = @ID_status)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID_status" QueryStringField="ID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        aby wrocic do poszukiwania tematu projektu kliknij
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/wyszukaj_projekt_temat.aspx">tutaj</asp:HyperLink>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" EmptyDataText="brak tematow do wyswietlania" GridLines="Vertical" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="nazwa_rodzaj" HeaderText="nazwa rodzaju" SortExpression="nazwa_rodzaj" />
                <asp:BoundField DataField="nazwa_status" HeaderText="nazwa statusu" SortExpression="nazwa_status" />
                <asp:BoundField DataField="nr_projekt" HeaderText="nr projekt" SortExpression="nr_projekt" />
                <asp:BoundField DataField="temat_projekt" HeaderText="temat_projekt" SortExpression="temat_projekt" />
                <asp:BoundField DataField="data_rozpoczecia" DataFormatString="{0:d}" HeaderText="data_rozpoczecia" SortExpression="data_rozpoczecia" />
                <asp:BoundField DataField="data_zakonczenia" DataFormatString="{0:d}" HeaderText="data_zakonczenia" SortExpression="data_zakonczenia" />
                <asp:BoundField DataField="kwota" HeaderText="kwota" SortExpression="kwota" />
                <asp:BoundField DataField="uwagi" HeaderText="uwagi" SortExpression="uwagi" />
                <asp:BoundField DataField="ID_status" HeaderText="ID_status" SortExpression="ID_status" Visible="False" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
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
