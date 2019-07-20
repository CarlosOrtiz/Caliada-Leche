
$(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //DataTable
    $('#example1').DataTable()
    $('#example2').DataTable({
        'paging': true,
        'lengthChange': false,
        'searching': false,
        'ordering': true,
        'info': true,
        'autoWidth': false
    })
    
    inciarFileUpload();
});
function inciarFileUpload() {

    //FileUpload
    $(document).on('change', '.btn-file :file', function () {
        var input = $(this),
            label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        input.trigger('fileselect', [label]);
    });
    $('.btn-file :file').on('fileselect', function (event, label) {
        var input = $(this).parents('.input-group').find(':text'),
            log = label;
        if (input.length) {
            input.val(log);
        } else {
            if (log) alert(log);
        }
    });
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#ContentPlaceHolder1_Img_FileUpload').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#ContentPlaceHolder1_FU_Imagen").change(function () {
        readURL(this);
    });
    $("#removeFU").click(function () {
        var control = jQuery('#ContentPlaceHolder1_FU_Imagen');
        control.replaceWith(control = control.val('').clone(true));
        $("#textIMG").val('');
    });
    //end FileUpload
}

function deleteIMG(url) {
    $('#ContentPlaceHolder1_Img_FileUpload').attr('src', url);
    var control = jQuery('#ContentPlaceHolder1_FU_Imagen');
    control.replaceWith(control = control.val('').clone(true));
    $("#textIMG").val('');
}

//Mover columnas de un GridView o Table
jQuery.moveColumn = function (table, from, to) {
    var rows = jQuery('tr', table);
    var cols; rows.each(function () {
        cols = jQuery(this).children('th, td');
        cols.eq(from).detach().insertBefore(cols.eq(to));
    });
}

function MostrarModal(modal) {
    $('#' + modal).modal('show');
}

function redirect(link) {
    if (link != null) {
        location.href = link;
    }
}

function mostrarElemento(id, valor) {
    if (valor) {
        $("#" + id).show();
    } else {
        $("#" + id).hide();
    }
}