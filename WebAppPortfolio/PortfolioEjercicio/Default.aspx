<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PortfolioEjercicio._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="nombre">Damián Leonel Defeo</h1>
        <p class="lead">Aquí encontrarás algunas de mis experiencias laborales, conocimientos y las características de mi perfil profesional.</p>

    </div>
    <section class="perfilProfesional">
    <div class="row">
        <div class="col-md-4">
            <h2>Perfil profesional</h2>
            <p class="perfil">
                Fui adquiriendo experiencia al desarrollarme como auditor nocturno, recepcionista y posteriormente como 
                Front Desk Manager. 18 años de trayectoria en administración hotelera me fue brindando un perfil profesional 
                con conocimientos administrativos, manejo de caja, atención a proveedores, relaciones interpersonales con 
                equipo de trabajo, liderazgo, entre otras cualidades. Invito a conocer mi recorrido profesional y mis 
                aptitudes.                
            </p>

            <ul>
                <li type="disc">Proactividad e iniciativa.</li>
                <li type="disc">Flexibilidad.</li>
                <li type="disc">Liderazgo y persuasión.</li>
                <li type="disc">Inteligencia emocional.</li>
                <li type="disc">Disciplina y seguridad.</li>
                <li type="disc">Honestidad.</li>
                <li type="disc">Resiliencia.</li>
                <li type="disc">Capacidad analítica.</li>
                <li type="disc">Gestión del tiempo.</li>
                <li type="disc">Adaptabilidad.</li>
                <li type="disc">Trabajo en equipo.</li>
                <li type="disc">Resolución de problemas.</li>
                <li type="disc">Perseverancia.</li>
                <li type="disc">Capacidad de comunicación.</li>
            </ul>

            <p>
                <a class="btn btn-secondary" href="https://damiandefeo-bfad2.firebaseapp.com">Portfolio &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Experiencia Laboral</h2>
            <h5>EXPERIENCIA HOTELERA: Abasto, Dazzler Towers, Panamericano, Aspen Square, Ramada | 2004- 2021.
            </h5>

            <ul>
                <li>Gestión integral de los Departamentos de Recepción, Spa y Resort.</li>
                <li>Organizar, dirigir y coordinar el trabajo del personal a cargo.</li>
                <li>Implementar procedimientos con la direccion y otros Departamentos en la gestión del establecimiento.</li>
                <li>Capacitar en la instrucción del personal a su cargo.</li>
                <li>Coordinación de los departamentos de reservas, ama de llaves y mantenimiento.</li>
            </ul>

            <h5>FRONT DESK MANAGER: Wyndham Nordelta Hotel | Enero 2022 - Sep 2022.
            </h5>
            <ul>
                <li type="disc">Auditor nocturno. Recepcionista.</li>
                <li type="disc">Pago a proveedores. Rendición de gastos.</li>
                <li type="disc">Cuentas corrientes. Facturación. Conciliaciones. Arqueo de cajas.</li>
                <li type="disc">Organización, planificación y coordinación de los departamentos de reservas, ama de llaves y mantenimiento</li>
                <li type="disc">Capacitación de personal. Asesoría a sector RR.HH. y gerencia.</li>
            </ul>
            <p>
                <a class="btn btn-secondary" href="https://www.linkedin.com/in/damiandefeo/">Perfil LinkedIn &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Estudios y conocimientos</h2>
            <p>
                Les presento estudios formales e informales que fui adquiriendo en mi carrera.
            </p>

            <ul>
                <li type="disc">RCP: Cursado en la AHT.</li>
                <li type="disc">Revenue Management. Cursado en MSC. 2019</li>
                <li type="disc">Redes sociales y Tic's - Google Workspace.</li>
                <li type="disc">Inglés - Portugues.</li>
                <li type="disc">UBA | 2010 - 2012. Carrera Ciencias Políticas. Incompleto.</li>
                <li type="disc">UBA. Contador Público. Incompleto</li>
                <li type="disc">La Suisse | 2004 - 2006. Administración hotelera. Incompleto.</li>
                <li type="disc">Sistemas: CM/Arion - Oracle - Pack Office</li>
            </ul>

            <p>
                <a class="btn btn-secondary" href="https://wa.me/00541156941989">Envíame un Whatsapp &raquo;</a>
            </p>
        </div>
    </div>
    </section>
    <hr />

    <div class="container body-content">

        <div class="col-2"></div>
        <div class="col">
            <div class="mb-3">
                <label for="txtEmail" class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" type="email" ID="txtEmail" />
            </div>
            <div class="mb-3">
                <label for="txtPassword" class="form-label">Contraseña</label>
                <asp:TextBox runat="server" type="password" CssClass="form-control" ID="txtPassword" />
            </div>

            <asp:Button Text="Ingresar" CssClass="btn btn-outline-secondary" ID="btnAceptar" OnClick="btnAceptar_Click" runat="server" />

        </div>
        <div class="col-2"></div>
    </div>


</asp:Content>
