<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ejemplo1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <% if (user != "")
        { %>
    <h2>Ingresaste!</h2>
    <asp:Label Text="text" ID="lblUser" runat="server" />

    <%}
        else
        { %>
    <h2>Debes loguearte.</h2>
    <a href="ejemploConMaster">Login</a>
    <%} %>
    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>--%>
</asp:Content>
