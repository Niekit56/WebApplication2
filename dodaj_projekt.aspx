<%@ Page Title="dodaj projekt" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="dodaj_projekt.aspx.cs" Inherits="WebApplication2.dodaj_projekt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 119px;
            height: 23px;
        }
        .auto-style4 {
            width: 116px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 119px;
        }
        .auto-style7 {
            height: 26px;
            width: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT * FROM [rodzaj] ORDER BY [nazwa_rodzaj]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT * FROM [status] ORDER BY [nazwa_status]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" DeleteCommand="DELETE FROM [projekt] WHERE [ID_projekt] = @ID_projekt" InsertCommand="INSERT INTO [projekt] ([ID_status], [ID_rodzaj], [nr_projekt], [temat_projekt], [data_rozpoczecia], [data_zakonczenia], [kwota], [uwagi]) VALUES (@ID_status, @ID_rodzaj, @nr_projekt, @temat_projekt, @data_rozpoczecia, @data_zakonczenia, @kwota, @uwagi)" SelectCommand="SELECT * FROM [projekt]" UpdateCommand="UPDATE [projekt] SET [ID_status] = @ID_status, [ID_rodzaj] = @ID_rodzaj, [nr_projekt] = @nr_projekt, [temat_projekt] = @temat_projekt, [data_rozpoczecia] = @data_rozpoczecia, [data_zakonczenia] = @data_zakonczenia, [kwota] = @kwota, [uwagi] = @uwagi WHERE [ID_projekt] = @ID_projekt">
            <DeleteParameters>
                <asp:Parameter Name="ID_projekt" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DDL_status_projektu" Name="ID_status" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="DDL_rodzaj_projektu" Name="ID_rodzaj" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TB_nr_projektu" Name="nr_projekt" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TB_temat_projektu" Name="temat_projekt" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TB_data_rozpoczecia" DbType="Date" Name="data_rozpoczecia" PropertyName="Text" />
                <asp:ControlParameter ControlID="TB_data_zakonczenia" DbType="Date" Name="data_zakonczenia" PropertyName="Text" />
                <asp:ControlParameter ControlID="TB_kwota" Name="kwota" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="TB_uwagi" Name="uwagi" PropertyName="Text" Type="String" />
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
        <table style="width: 100%;">
            <tr>
                <td class="auto-style6">rodzaj projektu:</td>
                <td>
                    <asp:DropDownList ID="DDL_rodzaj_projektu" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nazwa_rodzaj" DataValueField="ID_rodzaj" Font-Italic="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">status projektu:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DDL_status_projektu" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="nazwa_status" DataValueField="ID_status" Font-Italic="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">nr projektu:</td>
                <td>
                    <asp:TextBox ID="TB_nr_projektu" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_nr_projektu" ErrorMessage="nie podano numeru projektu!!!" ForeColor="#FF9966">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">temat projektu:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TB_temat_projektu" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TB_temat_projektu" ErrorMessage="nie podano tematu projektu!!!" ForeColor="#FF9933">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">data rozpoczęcia:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TB_data_rozpoczecia" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_data_rozpoczecia" ErrorMessage="nie podano date rozpoczecia!!!" ForeColor="#FF9933">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">data zakończenia:</td>
                <td>
                    <asp:TextBox ID="TB_data_zakonczenia" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TB_data_zakonczenia" ErrorMessage="nie podano date zakonczenia!!!" ForeColor="#FF9933">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">kwota projektu:</td>
                <td>
                    <asp:TextBox ID="TB_kwota" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TB_kwota" ErrorMessage="nie podano kwote projektu!!!" ForeColor="#FF9933">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">uwagi:</td>
                <td>
                    <asp:TextBox ID="TB_uwagi" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF9933" />
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="zapisz projekt" />
    </p>
</asp:Content>
