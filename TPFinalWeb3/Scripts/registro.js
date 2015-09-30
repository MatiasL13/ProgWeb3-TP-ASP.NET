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

$(document).ready(function () {
    $('.datepicker').datepicker({
        format: "dd/mm/yyyy",
        todayBtn: "linked",
        clearBtn: true,
        language: "es"
    });
});