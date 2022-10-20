<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ejemploConMaster.aspx.cs" Inherits="Ejemplo1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Ejemplo con master</h1>

    <asp:TextBox ID="txtNombre" runat="server" OnTextChanged="txtNombre_TextChanged"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click"/>
    <asp:Label ID="lblSaludo" runat="server" Text="" />
    <br />
    <asp:Label Text="" ID="lblSecundario" runat="server" />

    <%-- <a href="Default?id=3">DESCRIP</a>--%>

</asp:Content>
