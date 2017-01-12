/**
 * Created by VietNH on 10/31/2016.
 */
var modal = {
    showform: function (url, requestData, title) {
        $.get(url, requestData, function (res) {
            modal.genmodal(title, res);
        });
    },
    genmodal: function (title, htmlrespone) {
        var modalid = modal.genuniqueid();
        var htmlx = '<div class="modal fade" tabindex="-1" role="dialog" id="' + modalid + '">'
            + '<div class="modal-dialog" role="document">'
            + '<div class="modal-content">'
            + '<div class="modal-header">'
            + '<h4 class="modal-title">' + title + '</h4>'
            + '</div>'
            + '<div class="modal-body">'
            + htmlrespone
            + '</div>'
            + '</div>'
            + '</div>'
            + '</div>';
        $('html').append(htmlx);
        $('#' + modalid).modal('show');
    },
    genuniqueid: function () {
        var d = new Date().getTime();
        if (window.performance && typeof window.performance.now === "function") {
            d += performance.now(); //use high-precision timer if available
        }
        var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
            var r = (d + Math.random() * 16) % 16 | 0;
            d = Math.floor(d / 16);
            return (c == 'x' ? r : (r & 0x3 | 0x8)).toString(16);
        });
        return uuid;
    }
}

$(document).ready(function () {
    $('.confirmalert').click(function (e) {
        return confirm("Bạn có chắc chắn không ?");
    })

    $('#datetimepicker1').datetimepicker();
    $('#datetimepicker2').datetimepicker();

    $('input[name="daterange"]').daterangepicker({
        "showDropdowns": true,
        "showWeekNumbers": true,
        "autoApply": true,
        locale: {
            format: 'DD/MM/YYYY'
        },
        ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        "alwaysShowCalendars": true,
        "opens": "left"
    }, function (start, end, label) {
        console.log("New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')");
    });

})