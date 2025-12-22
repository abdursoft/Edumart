<!-- hero owl slider component -->
<div class="w-full max-w-7xl mx-auto">
    <div class="relative h-full max-h-[400px] overflow-hidden">
        <div class="owl-carousel owl-theme owl-loaded owl-drag">
            @if (!empty($slider))
                @foreach ($slider->contents as $content)
                    <div class="relative flex items-center justify-center">
                        <img src="{{ $content->files }}" alt="{{ $content->title }}"
                            class="w-full h-[400px] object-cover rounded-xl shadow-md" loading="lazy" />
                    </div>
                @endforeach
            @endif
        </div>
    </div>
</div>
<!-- end hero owl slider component -->

@section('scripts')
    <script>
        $(document).ready(function() {
            $(".owl-carousel").owlCarousel({
            animateOut: "fadeOut",
            items: 1,
            margin: 0,
            smartSpeed: 600,
            autoplay: true,
            loop: true,
            autoplayHoverPause: true,
            dots: false,
            });
        });
    </script>
@endsection
