<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PruebaBootstrap.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-2"></div>
        <div class="col">
            <div class="mb-3">
                <label for="txtEmail" class="form-label">Email</label>                
                <asp:TextBox type="email" CssClass="form-control" ID="txtEmail" runat="server" />                
            </div>
            <div class="mb-3">
                <label for="txtPassword" class="form-label">Contraseña</label>
                <asp:TextBox type="password" ID="txtPassword" CssClass="form-control" runat="server" />
            </div>
            
            <asp:Button Text="Ingresar" CssClass="btn btn-primary" ID="btnAceptar" OnClick="btnAceptar_Click"  runat="server" />
        </div>
        <div class="col-2"></div>
    </div>

</asp:Content>
