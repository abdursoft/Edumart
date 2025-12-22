
<style>
    .dropzone{
        border-style: dashed;
    }
</style>

@section('styles')
<link rel="stylesheet" href="{{asset('ui/dropzone.css')}}" />
<script src="{{asset('ui/dropzone.js')}}"></script>
@endsection

<div class="w-full flex items-center justify-center flex-col gap-5 min-h-[560px]">
    <div class="w-full md:w-3/5">
        <form action="{{ route('admin.media.upload') }}"
            method="POST"
            class="dropzone"
            id="multiFileDropzone">
            @csrf
            <input type="hidden" name="slider" value="{{$slider?->id}}">
        </form>
    </div>
</div>

<script>
Dropzone.options.multiFileDropzone = {
    uploadMultiple: false,     // dropzone uploads 1-by-1
    parallelUploads: 50,       // upload 50 files at once
    maxFilesize: 20,           // 20 MB per file
    acceptedFiles: "image/*,video/mp4,webm",

    addRemoveLinks: true,

    sending: function(file,xhr, formData){
        formData.append('slider', '{{$slider->id}}')
    },

    success: function (file, response) {
        console.log("Uploaded:", response.path);
    },

    removedfile: function (file) {
        file.previewElement.remove();
    }
};
</script>
