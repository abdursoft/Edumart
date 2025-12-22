let quillContainer = null;

// quil file upload
function selectLocalImage() {
    const input = document.createElement("input");
    input.setAttribute("type", "file");
    input.setAttribute("accept", "image/*");
    input.click();

    input.onchange = () => {
        const file = input.files[0];
        if (file) {
            uploadImage(file);
        }
    };
}

function uploadImage(file) {
    let formData = new FormData();
    formData.append("image", file);

    fetch("/upload-quill-image", {
        method: "POST",
        headers: {
            "X-CSRF-TOKEN": document.querySelector('meta[name="csrf-token"]')
                .content,
        },
        body: formData,
    })
        .then((res) => res.json())
        .then((data) => {
            insertToEditor(data.url);
        })
        .catch((err) => console.error(err));
}

function insertToEditor(url) {
    const range = quillContainer.getSelection();
    console.log(range);
    quillContainer.insertEmbed(range.index, "image", url);
}

// table highlight
function highlightGrid(grid, rows, cols) {
    const cells = grid.children;
    for (let cell of cells) {
        let r = parseInt(cell.dataset.row);
        let c = parseInt(cell.dataset.col);
        cell.classList.toggle("active", r <= rows && c <= cols);
    }
}

// show table picker
function tablePicker(table) {
    const quill = table;
    const popup = document.getElementById("table-popup");

    // Position popup under icon
    const button = document.querySelector(".ql-table");
    const rect = button.getBoundingClientRect();

    console.log(rect);

    popup.style.left = rect.left + "px";
    popup.style.top = rect.bottom + "px";
    popup.style.display = "block";

    // Build grid
    popup.innerHTML = '<div class="table-grid"></div>';
    const grid = popup.querySelector(".table-grid");

    for (let r = 1; r <= 10; r++) {
        for (let c = 1; c <= 10; c++) {
            const cell = document.createElement("div");
            cell.dataset.row = r;
            cell.dataset.col = c;

            cell.addEventListener("mouseover", function () {
                highlightGrid(grid, r, c);
            });

            cell.addEventListener("click", function () {
                popup.style.display = "none";
                const table = quill.getModule("better-table");
                table.insertTable(r, c);
            });

            grid.appendChild(cell);
        }
    }
}
