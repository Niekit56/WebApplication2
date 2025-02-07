<%@ Page Title="edytuj rodzaj" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="edytuj_rodzaj.aspx.cs" Inherits="WebApplication2.edytuj_project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [rodzaj] WHERE [ID_rodzaj] = @ID_rodzaj" InsertCommand="INSERT INTO [rodzaj] ([nazwa_rodzaj]) VALUES (@nazwa_rodzaj)" SelectCommand="SELECT * FROM [rodzaj]" UpdateCommand="UPDATE [rodzaj] SET [nazwa_rodzaj] = @nazwa_rodzaj WHERE [ID_rodzaj] = @ID_rodzaj" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="ID_rodzaj" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nazwa_rodzaj" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nazwa_rodzaj" Type="String" />
                <asp:Parameter Name="ID_rodzaj" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_rodzaj" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_rodzaj" HeaderText="ID_rodzaj" InsertVisible="False" ReadOnly="True" SortExpression="ID_rodzaj" Visible="False" />
                <asp:BoundField DataField="nazwa_rodzaj" HeaderText="rodzaj projektu" SortExpression="nazwa_rodzaj" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
    </p>
</asp:Content>
