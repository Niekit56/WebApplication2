<%@ Page Title="dodaj rodzaj" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dodaj_rodzaj.aspx.cs" Inherits="WebApplication2.dodaj_rodzaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [rodzaj] WHERE [ID_rodzaj] = @ID_rodzaj" InsertCommand="INSERT INTO [rodzaj] ([nazwa_rodzaj]) VALUES (@nazwa_rodzaj)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [rodzaj]" UpdateCommand="UPDATE [rodzaj] SET [nazwa_rodzaj] = @nazwa_rodzaj WHERE [ID_rodzaj] = @ID_rodzaj">
    <DeleteParameters>
        <asp:Parameter Name="ID_rodzaj" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="nazwa_rodzaj" PropertyName="Text" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nazwa_rodzaj" Type="String" />
        <asp:Parameter Name="ID_rodzaj" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</p>
<p>
</p>
<p>
    rodzaj projektu<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="nie wprowadzono nazwu rodzaju projektu!!!" ForeColor="#FF9966">*</asp:RequiredFieldValidator>
</p>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF9933" />
<p>
    <asp:Label ID="Label1" runat="server" ForeColor="#FF9933" Text="Label"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="zapisz" />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
