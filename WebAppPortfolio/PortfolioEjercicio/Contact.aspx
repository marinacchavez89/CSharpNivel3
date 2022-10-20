<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PortfolioEjercicio.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Title %>.</h2>
    <h5>Podes contactarme por estos medios:</h5>
    <address>

        <abbr title="Celular">Teléfono:</abbr>
        +54 11 5694 1989
    </address>

    <address>
        <strong>Email:</strong>   <a href="mailto:defeodamian@gmail.com">defeodamian@gmail.com</a><br />
        <strong>LinkedIn:</strong> <a href="https://www.linkedin.com/in/damiandefeo">https://www.linkedin.com/in/damiandefeo</a>
    </address>

    <hr />

    <section class="container_form">

        <h3>Escríbeme y en breve me pondré en contacto contigo.</h3>

        <div class="row">


            <div class="col">
                <div class="mb-3">
                    <label for="txtEmail" class="form-label">Email</label>
                    <input id="txtEmail" type="email" class="form-control" placeholder="email@ejemplo.com">
                </div>
                <div class="mb-3">
                    <label for="txtMensaje" class="form-label">Mensaje</label>
                    <textarea id="txtMensaje" class="form-control" rows="3"></textarea>
                </div>
                <div class="mb-3">
                    <button onclick="validar()" class="btn btn-secondary">Enviar</button>
                </div>

            </div>

        </div>
    </section>

</asp:Content>
