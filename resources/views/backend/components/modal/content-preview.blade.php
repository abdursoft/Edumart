<!-- content preview modal -->
<div class="w-screen h-screen fixed top-0 left-0 p-2 flex items-center justify-center inset-0 z-[9999] bg-black/30 previewContainer hidden">
    <div class="w-full max-w-[66.666%] aspect-[16/9] rounded-md relative">
        <iconify-icon
            icon="pepicons-pencil:times-circle"
            width="26"
            height="26"
            class="absolute top-2 right-2 cursor-pointer text-red-600 w-[46px] h-[46px]"
            onclick="$('.previewContainer').toggleClass('hidden')"
        ></iconify-icon>

        <img src="" alt="" class="hidden w-full h-full rounded-md previewImage">
        <video src="" class="hidden w-full h-full rounded-md previewVideo"></video>
    </div>
</div>


<script>
    function previewImage(src){
        const img = $(".previewImage");
        const video = $(".previewVideo");
        if(video.isPlaying) video.stop();
        $(video).addClass('hidden');
        $(img).removeClass('hidden');
        $(img).attr('src',src);
        setTimeout(() => {
            $(".previewContainer").removeClass('hidden');
        }, 300);
    }

    function previewVideo(src){
        const img = $(".previewImage");
        const video = $(".previewVideo");
        $(video).removeClass('hidden');
        $(img).addClass('hidden');
        $(video).attr('src',src);
        $(video).play();
        setTimeout(() => {
            $(".previewContainer").removeClass('hidden');
        }, 300)
    }
</script>
