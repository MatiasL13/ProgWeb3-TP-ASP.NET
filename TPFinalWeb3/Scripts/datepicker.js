$(document).ready(function () {
    //$('.datepicker').datepicker({
    //     format: "dd/mm/yyyy",
    //         todayBtn: "linked",
    //         clearBtn: true,
    //         language: "es"
    //});
    $('.datetimepicker').datetimepicker({
        timeFormat: 'HH:mm:ss',
        dateFormat: 'yy-m-d', 
        timezone: -180,
        currentText: 'Hoy',
        closeText: 'Cerrar',
        timeText: 'Horario',
        hourText: 'Hora',
        minuteText: 'Min',
        secondText: 'Seg'
    });
    $('.datepicker').datepicker({
        dateFormat: 'yy-m-d',
        timezone: -180,
        currentText: 'Hoy',
        closeText: 'Cerrar',

    });

});