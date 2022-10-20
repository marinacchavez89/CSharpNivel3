function validar() {
    let email = document.getElementById("txtEmail").value;
    let mensaje = document.getElementById("txtMensaje").value;

    if ((email.length)== 0)
        alert("Ingrese su email de contacto, por favor");

    if ((mensaje.length) == 0)
        alert("Ingrese su mensaje, por favor");
}
