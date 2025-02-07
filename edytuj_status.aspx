<%@ Page Title="edytuj status" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="edytuj_status.aspx.cs" Inherits="WebApplication2.edytuj_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [status] WHERE [ID_status] = @ID_status" InsertCommand="INSERT INTO [status] ([nazwa_status]) VALUES (@nazwa_status)" SelectCommand="SELECT * FROM [status]" UpdateCommand="UPDATE [status] SET [nazwa_status] = @nazwa_status WHERE [ID_status] = @ID_status">
            <DeleteParameters>
                <asp:Parameter Name="ID_status" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nazwa_status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nazwa_status" Type="String" />
                <asp:Parameter Name="ID_status" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_status" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_status" HeaderText="ID_status" InsertVisible="False" ReadOnly="True" SortExpression="ID_status" Visible="False" />
                <asp:BoundField DataField="nazwa_status" HeaderText="rodzaj projektu" SortExpression="nazwa_status" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
