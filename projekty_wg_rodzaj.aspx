<%@ Page Title="projekt wg rodzaj" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="projekty_wg_rodzaj.aspx.cs" Inherits="WebApplication2.projekt_wg_rodzaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT * FROM [rodzaj] ORDER BY [nazwa_rodzaj]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT projekt.nr_projekt, projekt.temat_projekt, projekt.data_rozpoczecia, projekt.data_zakonczenia, projekt.kwota, projekt.uwagi, rodzaj.ID_rodzaj, status.nazwa_status FROM projekt INNER JOIN rodzaj ON projekt.ID_rodzaj = rodzaj.ID_rodzaj INNER JOIN status ON projekt.ID_status = status.ID_status
where rodzaj.ID_rodzaj = @ID_rodzaj">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ID_rodzaj" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        Rodzaj projektu:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nazwa_rodzaj" DataValueField="ID_rodzaj">
        </asp:DropDownList>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ID_rodzaj" DataSourceID="SqlDataSource2" EmptyDataText="Brak projektow do wyswietliania." ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="nr_projekt" HeaderText="nr projektu" SortExpression="nr_projekt" />
                <asp:BoundField DataField="temat_projekt" HeaderText="temat projektu" SortExpression="temat_projekt" />
                <asp:BoundField DataField="data_rozpoczecia" DataFormatString="{0:d}" HeaderText="data rozpoczecia" SortExpression="data_rozpoczecia" />
                <asp:BoundField DataField="data_zakonczenia" HeaderText="data zakonczenia" SortExpression="data_zakonczenia" />
                <asp:BoundField DataField="kwota" HeaderText="kwota" SortExpression="kwota" />
                <asp:BoundField DataField="uwagi" HeaderText="uwagi" SortExpression="uwagi" />
                <asp:BoundField DataField="ID_rodzaj" HeaderText="ID_rodzaj" InsertVisible="False" ReadOnly="True" SortExpression="ID_rodzaj" Visible="False" />
                <asp:BoundField DataField="nazwa_status" HeaderText="status projektu" SortExpression="nazwa_status" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
