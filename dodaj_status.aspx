<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dodaj_status.aspx.cs" Inherits="WebApplication2.dodaj_status" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [status] WHERE [ID_status] = @ID_status" InsertCommand="INSERT INTO [status] ([nazwa_status]) VALUES (@nazwa_status)" SelectCommand="SELECT * FROM [status]" UpdateCommand="UPDATE [status] SET [nazwa_status] = @nazwa_status WHERE [ID_status] = @ID_status">
            <DeleteParameters>
                <asp:Parameter Name="ID_status" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nazwa_status" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nazwa_status" Type="String" />
                <asp:Parameter Name="ID_status" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        status projektu:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="nie wprowadzono status projektu!!!" ForeColor="#FF9933">*</asp:RequiredFieldValidator>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF9933" />
    <p>
        <asp:Label ID="Label1" runat="server" ForeColor="#FF9933" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="zapisz" />
    </p>
</asp:Content>
