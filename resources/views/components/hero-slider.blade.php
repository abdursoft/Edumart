<!-- hero owl slider component -->
<div class="w-full aspect-[3/4] md:aspect-[11/5] mx-auto">
    <div class="relative h-full overflow-hidden">
        <div class="owl-carousel owl-theme owl-loaded owl-drag h-[60vh]">
            @if (!empty($slider))
                @foreach ($slider->contents as $content)
                    <div class="relative w-full h-full"
                        style="background:url('{{ Storage::url($content->media_url) }}') center;background-size:cover;background-repeat:no-repeat;background-position:center;">
                        <div class="absolute z-3 top-[50%] left-0 right-0 w-full flex items-center justify-center">
                            <div
                                class="w-full md:max-w-[35%] bg-black/70 rounded-lg shadow-lg px-2 md:px-6 py-2 md:py-5 text-center text-white/70">
                                <h1 class="text-xl md:text-3xl font-bold">{{ $content->title }}</h1>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
</div>
<!-- end hero owl slider component -->
<script>
    document.addEventListener('DOMContentLoaded', function() {
        tns({
            container: '.owl-carousel',
            animateOut: "fadeOut",
            items: 1,
            margin: 0,
            controls: false,
            smartSpeed: 600,
            autoplay: true,
            loop: true,
            mouseDrag: true,
            autoplayHoverPause: true,
            autoplayButtonOutput: false,
            dots: false,
        });
    });
</script>
