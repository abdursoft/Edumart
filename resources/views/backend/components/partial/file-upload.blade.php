<div class="max-w-5xl mx-auto p-6">
    <h2 class="text-xl font-semibold mb-4">Upload Images / Videos</h2>

    <div id="dropZone"
        class="relative flex flex-col items-center justify-center border-2 border-dashed
                border-gray-300 rounded-lg p-8 cursor-pointer bg-gray-50 hover:bg-gray-100">
        <input type="file" id="fileInput" class="absolute inset-0 opacity-0 cursor-pointer" multiple
            accept="image/*,video/*">

        <p class="text-gray-600">
            Drag & drop files or <span class="text-indigo-600 font-semibold">browse</span>
        </p>
    </div>

    <div id="previewContainer" class="grid grid-cols-2 md:grid-cols-4 gap-4 mt-6"></div>

    <div class="w-full flex items-center justify-center">
        <button id="uploadBtn"
            class="mt-6 px-4 py-2 bg-slate-600 text-white hover:bg-red-500 cursor-pointer rounded hidden">
            Upload Files
        </button>
        <p class="text-green-600 text-base md:text-lg font-bold mt-7 hidden" id="uploadText">Uploading progress started...</p>
    </div>
</div>

@push('scripts')
    <script>
        const filesQueue = [];
        const CHUNK_SIZE = 2 * 1024 * 1024; // 2MB

        let filesRemaining = 0;
        const previewContainer = document.getElementById('previewContainer');
        const fileInput = document.getElementById('fileInput');

        fileInput.addEventListener('change', e => addFiles(e.target.files));

        function addFiles(files) {
            [...files].forEach(file => {
                const id = Date.now() + Math.random();
                filesQueue.push({
                    id,
                    file
                });

                filesRemaining = files.length;

                const card = document.createElement('div');
                card.className = 'bg-white rounded shadow p-2 relative';
                card.dataset.id = id;

                let media;
                if (file.type.startsWith('image')) {
                    media = document.createElement('img');
                    media.src = URL.createObjectURL(file);
                } else {
                    media = document.createElement('video');
                    media.src = URL.createObjectURL(file);
                    media.controls = true;
                }

                media.className = 'w-full h-32 object-cover rounded';

                const removeBtn = document.createElement('button');
                removeBtn.innerHTML = '✕';
                removeBtn.className =
                    'absolute top-1 right-1 bg-red-600 text-white rounded-full w-6 h-6';
                removeBtn.onclick = () => removeFile(id);

                const progress = document.createElement('div');
                progress.className = 'h-1 bg-indigo-500 w-0 mt-2 rounded';

                card.append(media, removeBtn, progress);
                previewContainer.appendChild(card);
                document.getElementById('uploadBtn').classList.remove('hidden');
            });
        }

        function onUploadComplete(file) {
            filesRemaining--;

            if (filesRemaining === 0) {
                document.getElementById('uploadText').textContent = ('Files uploaded successfully!');
                setTimeout(() => {
                    location.reload();
                }, 2000);
            }
        }

        function removeFile(id) {
            const index = filesQueue.findIndex(f => f.id === id);
            if (index !== -1) filesQueue.splice(index, 1);
            document.querySelector(`[data-id="${id}"]`).remove();
        }
    </script>
@endpush

@push('scripts')
    <script>
        document.getElementById('uploadBtn').onclick = async () => {
            document.getElementById('uploadBtn').classList.add('hidden');
            document.getElementById('uploadText').classList.remove('hidden');
            for (const item of filesQueue) {
                const file = item.file;
                const card = document.querySelector(`[data-id="${item.id}"]`);
                const progressBar = card.querySelector('div.h-1');

                if (file.type.startsWith('image')) {
                    const webp = await convertToWebP(file);
                    await uploadChunks(webp, progressBar);
                } else {
                    await uploadChunks(file, progressBar);
                }
            }
        };

        function convertToWebP(file) {
            return new Promise(resolve => {
                const img = new Image();
                img.src = URL.createObjectURL(file);
                img.onload = () => {
                    const canvas = document.createElement('canvas');
                    canvas.width = img.width;
                    canvas.height = img.height;
                    canvas.getContext('2d').drawImage(img, 0, 0);

                    canvas.toBlob(blob => {
                        resolve(new File([blob], file.name.replace(/\.\w+$/, '.webp'), {
                            type: 'image/webp'
                        }));
                    }, 'image/webp', 0.9);
                };
            });
        }

        async function uploadChunks(file, progressBar) {
            const totalChunks = Math.ceil(file.size / CHUNK_SIZE);
            const uploadId = crypto.randomUUID();

            for (let i = 0; i < totalChunks; i++) {
                const chunk = file.slice(i * CHUNK_SIZE, (i + 1) * CHUNK_SIZE);

                const formData = new FormData();
                formData.append('file', chunk);
                formData.append('chunk', i + 1);
                formData.append('total_chunks', totalChunks);
                formData.append('upload_id', uploadId);
                formData.append('filename', file.name);
                formData.append('_token', '{{ csrf_token() }}');
                formData.append('gallery_id', '{{ $gallery->id }}');

                await fetch('{{ route('admin.media.gallery.content.add') }}', {
                    method: 'POST',
                    body: formData
                })

                progressBar.style.width = ((i + 1) / totalChunks) * 100 + '%';
            }
            onUploadComplete();
            progressBar.classList.add('bg-green-500');
        }
    </script>
@endpush
