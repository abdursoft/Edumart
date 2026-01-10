<div class="mb-3 w-full grid grid-cols-1 lg:grid-cols-2 gap-2 items-center">
    <div class="flex items-center justify-between">
        <div id="classTimer" class="text-4xl font-bold"></div>
        <p class="hidden lg:block">Class ending progress</p>
    </div>

    <!-- Progress Bar -->
    <div class="w-full bg-gray-200 rounded-full h-[40px] overflow-hidden">
        <div
            id="progressBar"
            class="bg-green-500 h-[40px] transition-all duration-500"
            style="width: 100%"
        ></div>
    </div>
</div>

<!-- Bell sound -->
<audio id="bellSound" src="/sounds/bell.mp3" preload="auto"></audio>

<script>
    const timer = new ClassTimeRangeTimer(
        '{{$start}}',
        '{{$end}}',
        document.getElementById('classTimer'),
        document.getElementById('progressBar'),
        document.getElementById('bellSound'),
        {
            warningMinutes: 5,
            onWarning: () => {
                console.log('⚠️ 5 minutes remaining!');
            },
        }
    );

    timer.start();
</script>
