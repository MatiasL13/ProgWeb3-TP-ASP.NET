$(document).ready(function () {
  
    $.ajax({
        type: "POST",
        url: "/servicio.asmx/ObtenerMaratonesRealizados",
        cache: false,
        contentType: "application/json; charset=utf-8",
        data: "{}",
        dataType: "json",
        success: function (data) {
            var response = data.d;
            var trHTML = '';
            $.each(response, function (i, item) {
                trHTML += '<tr><td>' + item.NombreMaraton + '</td>' +
                 '<td>' + item.Posicion + '</td>' +
                 '<td>' + item.Tiempo + '</td>' +
                  '<td>' + item.Premio + '</td>' + 
                  '</td></tr>';
            });
            $('#tablaHistorial').append(trHTML);
        },
        error: function (xhr, status, error) {
            alert(xmlRequest.status + ' \n\r ' +
                   xmlRequest.statusText + '\n\r' +
                   xmlRequest.responseText);
        }
    });
});