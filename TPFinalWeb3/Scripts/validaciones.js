﻿function passValidate(oSrc, args) {
    var valido = true;
    if (args.Value == '' || args.Value.length < 6) {
        valido = false;
    }
    args.IsValid = valido;
}

function shouldBeNumber(oSrc, args) {
    var valido = true;
    if (isNaN(args.Value)) {
        valido = false;
    }
    args.IsValid = valido;
}

function campoRequerido(oSrc, args) {
    var valido = true;
    if (args.Value == '' || args.Value.length == 0) {
        valido = false;
    }

    args.IsValid = valido;
}

function passCompare(oSrc, args) {
    var valido = true;
    var pass = document.getElementById('<%=Password.ClientID%>').value;
    if (args.Value != pass) {
        valido = false;
    }

    args.IsValid = valido;
}


function validarEmail(oSrc, args) {
    //alert("ingresó a la función");
    expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    //alert("la expresión: " + !expr.test(args.Value));
    var valido;
    //if (!expr.test(args.Value)) {
    //    valido = false;
    //} else {
    //    valido =  true;
    //}
    args.IsValid = expr.test(args.Value);

}

function premioEntre5000500(oSrc, args) {

    if (args.Value <= 5000 && args.Value >= 500)
        args.IsValid = true;
    else
        args.IsValid = false;
}
