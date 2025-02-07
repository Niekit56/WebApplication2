<%@ Page Title="edytuj projekt" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="edytuj_projekt.aspx.cs" Inherits="WebApplication2.edytuj_projekt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [projekt] WHERE [ID_projekt] = @ID_projekt" InsertCommand="INSERT INTO [projekt] ([ID_status], [ID_rodzaj], [nr_projekt], [temat_projekt], [data_rozpoczecia], [data_zakonczenia], [kwota], [uwagi]) VALUES (@ID_status, @ID_rodzaj, @nr_projekt, @temat_projekt, @data_rozpoczecia, @data_zakonczenia, @kwota, @uwagi)" SelectCommand="SELECT projekt.ID_projekt, projekt.ID_rodzaj, rodzaj.nazwa_rodzaj, projekt.ID_status, status.nazwa_status, projekt.nr_projekt, projekt.temat_projekt, projekt.data_rozpoczecia, projekt.data_zakonczenia, projekt.kwota, projekt.uwagi FROM projekt INNER JOIN rodzaj ON projekt.ID_rodzaj = rodzaj.ID_rodzaj INNER JOIN status ON projekt.ID_status = status.ID_status" UpdateCommand="UPDATE [projekt] SET [ID_status] = @ID_status, [ID_rodzaj] = @ID_rodzaj, [nr_projekt] = @nr_projekt, [temat_projekt] = @temat_projekt, [data_rozpoczecia] = @data_rozpoczecia, [data_zakonczenia] = @data_zakonczenia, [kwota] = @kwota, [uwagi] = @uwagi WHERE [ID_projekt] = @ID_projekt">
            <DeleteParameters>
                <asp:Parameter Name="ID_projekt" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_status" Type="Int32" />
                <asp:Parameter Name="ID_rodzaj" Type="Int32" />
                <asp:Parameter Name="nr_projekt" Type="String" />
                <asp:Parameter Name="temat_projekt" Type="String" />
                <asp:Parameter DbType="Date" Name="data_rozpoczecia" />
                <asp:Parameter DbType="Date" Name="data_zakonczenia" />
                <asp:Parameter Name="kwota" Type="Decimal" />
                <asp:Parameter Name="uwagi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID_status" Type="Int32" />
                <asp:Parameter Name="ID_rodzaj" Type="Int32" />
                <asp:Parameter Name="nr_projekt" Type="String" />
                <asp:Parameter Name="temat_projekt" Type="String" />
                <asp:Parameter DbType="Date" Name="data_rozpoczecia" />
                <asp:Parameter DbType="Date" Name="data_zakonczenia" />
                <asp:Parameter Name="kwota" Type="Decimal" />
                <asp:Parameter Name="uwagi" Type="String" />
                <asp:Parameter Name="ID_projekt" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT * FROM [rodzaj]
where nazwa_rodzaj &lt;&gt;'-wybierz rodzaj-'
ORDER BY [nazwa_rodzaj]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT * FROM [status]
where nazwa_status &lt;&gt;'-wybierz status-'
ORDER BY [nazwa_status]"></asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ID_projekt" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_projekt" HeaderText="ID_projekt" InsertVisible="False" ReadOnly="True" SortExpression="ID_projekt" Visible="False" />
                <asp:BoundField DataField="ID_rodzaj" HeaderText="ID_rodzaj" SortExpression="ID_rodzaj" Visible="False" />
                <asp:BoundField DataField="nazwa_rodzaj" HeaderText="nazwa_rodzaj" SortExpression="nazwa_rodzaj" Visible="False" />
                <asp:TemplateField HeaderText="rodzaj projektu">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="nazwa_rodzaj" DataValueField="ID_rodzaj" SelectedValue='<%# Bind("ID_rodzaj") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("nazwa_rodzaj") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ID_status" HeaderText="ID_status" SortExpression="ID_status" Visible="False" />
                <asp:TemplateField HeaderText="status projektu">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="nazwa_status" DataValueField="ID_status" SelectedValue='<%# Bind("ID_status") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("nazwa_status") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="nazwa_status" HeaderText="status projektu" SortExpression="nazwa_status" Visible="False" />
                <asp:BoundField DataField="nr_projekt" HeaderText="nr_projekt" SortExpression="nr_projekt" />
                <asp:BoundField DataField="temat_projekt" HeaderText="temat_projekt" SortExpression="temat_projekt" />
                <asp:BoundField DataField="data_rozpoczecia" HeaderText="data_rozpoczecia" SortExpression="data_rozpoczecia" />
                <asp:BoundField DataField="data_zakonczenia" HeaderText="data_zakonczenia" SortExpression="data_zakonczenia" />
                <asp:BoundField DataField="kwota" HeaderText="kwota" SortExpression="kwota" />
                <asp:BoundField DataField="uwagi" HeaderText="uwagi" SortExpression="uwagi" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
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
    <p>
    </p>
</asp:Content>
