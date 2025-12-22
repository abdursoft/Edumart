// editor image handler 
function selectLocalImage() {
    const input = document.createElement('input');
    input.setAttribute('type', 'file');
    input.setAttribute('accept', 'image/*');
    input.click();

    input.onchange = () => {
        const file = input.files[0];
        if (file) {
            uploadImage(file);
        }
    };
}

// editor image upload 
function uploadImage(file) {
    let formData = new FormData();
    formData.append('image', file);

    fetch('/upload-quill-image', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': '{{ csrf_token() }}'
        },
        body: formData
    })
    .then(response => response.json())
    .then(result => {
        insertToEditor(result.url);
    })
    .catch(err => console.error(err));
}

// insert image into input field 
function insertToEditor(url) {
    const range = {{$name}}.getSelection();
    {{$name}}.insertEmbed(range.index, 'image', url);
}
