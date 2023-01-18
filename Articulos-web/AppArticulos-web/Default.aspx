<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AppArticulos_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>¡Bienvenido/a!</h1>
    <p>Te encuentras en la web de articulos.</p>

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%--  <%
            foreach (dominio.Articulo art in ListaArticulo)
            {
        %>
        <div class="col">
            <div class="card">
                <img src="<%: art.ImagenUrl %>" class="card-img-top" alt="Imagen del articulo">
                <div class="card-body">
                    <h5 class="card-title"><%: art.Nombre %></h5>
                    <p class="card-text"><%: art.Descripcion %></p>
                    <a href="DetalleArticulo.aspx?id=<%: art.Id %>">Ver detalle</a>
                </div>
            </div>
        </div>
        <% }%>--%>

        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("ImagenUrl") %>" class="card-img-top" alt="Imagen del articulo">
                        <%--<asp:Image ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/1200px-Placeholder_view_vector.svg.png"
                        runat="server" ID="imgArticulo" CssClass="card-img-top" Width="60%" />--%>
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a href="DetalleArticulo.aspx?id=<%#Eval("Id") %>">Ver detalle</a>
                            <asp:Button Text="Comprar" CssClass="btn btn-secondary" ID="btnComprar" CommanArgument='<%#Eval("Id") %>' CommandName="ArticuloId" OnClick="btnComprar_Click" runat="server" />
                            <asp:CheckBox Text="Favorito" ID="chkFavorito" autoposback="true" OnCheckedChanged="chkFavorito_CheckedChanged" runat="server" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
