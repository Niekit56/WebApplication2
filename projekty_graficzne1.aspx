<%@ Page Title="projekty graficzne1" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="projekty_graficzne1.aspx.cs" Inherits="WebApplication2.projekty_graficzne1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:polaczenie_projekty %>" SelectCommand="SELECT * FROM [rodzaj]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
            <Series>
                <asp:Series Name="Series1" XValueMember="nazwa_rodzaj" YValueMembers="ID_rodzaj">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
