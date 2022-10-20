<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="ejemplo_web.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id</label>
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtModelo" class="form-label">Modelo</label>
                <asp:TextBox runat="server" ID="txtModelo" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción</label>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="ddlColores" class="form-label">Color</label>
                <asp:DropDownList ID="ddlColores" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtFecha" class="form-label">Fecha</label>
                <asp:TextBox runat="server" TextMode="Date" ID="txtFecha" CssClass="form-control" />
            </div>
            <asp:CheckBox Text="" ID="chkUsado" runat="server" />
            <asp:Label Text="Usado" CssClass="form-check-label" runat="server" />
            <div class="mb-3">
                <asp:RadioButton ID="rdbImportado" AutoPostBack="true" OnCheckedChanged="rdbImportado_CheckedChanged" CssClass="form-check-label" Text="Importado" runat="server" GroupName="Importado" />
                <asp:RadioButton ID="rdbNacional" AutoPostBack="true" OnCheckedChanged="rdbImportado_CheckedChanged" CssClass="form-check-label" Text="Nacional" Checked="true" runat="server" GroupName="Importado" />
            </div>

            <div class="mb-3">
                <asp:Button Text="Aceptar" ID="btnAceptar" onClick="btnAceptar_Click" CssClass="btn btn-primary" runat="server" />
                <asp:Button Text="Modificar" ID="btnModificar" onClick="btnModificar_Click" CssClass="btn btn-warning" runat="server" />
                <asp:Button Text="Eliminar" ID="btnEliminar" onClick="btnEliminar_Click" OnClientClick="alert('¿Esta seguro que desea eliminar este elemento?')" CssClass="btn btn-danger" runat="server" />
                <a href="Default.aspx">Cancelar</a>
            </div>

        </div>
    </div>

</asp:Content>
