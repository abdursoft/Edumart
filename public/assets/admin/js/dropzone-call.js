Dropzone.autoDiscover = !1, $(document).ready((function() {
    $("#id_dropzone").dropzone({
        maxFiles: 1,
        url: "/ajax_file_upload_handler/",
        success: function(o,response) {
            if(response.status == 'success'){
                $("#file_temp").val(response.url);
            }
        }
    })
    $("#id_dropzone1").dropzone({
        maxFiles: 1,
        url: "/ajax_file_upload_handler/",
        success: function(o,response) {
            if(response.status == 'success'){
                $("#file_temp1").val(response.url);
            }
        }
    })
}));