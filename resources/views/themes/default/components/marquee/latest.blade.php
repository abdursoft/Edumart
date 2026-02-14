<div class="scroll1">
    <div class="scrollbox">
    <span class="latest">{{text('latest')}}</span>
    <h3>
        <marquee direction="left" scrollamount="4">
            @foreach(notice() as $key=>$news)
                <a href="/news/{{$news->id}}/{{$news->title}}" class="latest-news-item !hover:underline !hover:text-orange-300">
                    {{ $news->title }}
                </a> {{ $key < count(notice()) - 1 ? '|' : '' }}
            @endforeach
        </marquee>
    </h3>
    </div>
</div>
