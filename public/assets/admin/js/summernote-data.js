$(document).ready(function() {
    $('#summernote').summernote({
        placeholder: "Write Your Content",
        tabsize: 2,
        height: 400,
        tooltip: 1
      });
    var noteBar = $('.note-toolbar');
    noteBar.find('[data-toggle]').each(function() {
        $(this).attr('data-bs-toggle', $(this).attr('data-toggle')).removeAttr('data-toggle');
    });
});