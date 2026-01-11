<div class="bg-gray-300 p-2 rounded-md" id="clock"></div>
<script>
let currentTimezone = "{{site()->set_timezone ?? 'Asia/Dhaka'}}";

function updateClock() {
    const now = new Date();

    const formatter = new Intl.DateTimeFormat('en-US', {
        timeZone: currentTimezone,
        hour: 'numeric',
        minute: '2-digit',
        second: '2-digit',
        hour12: true
    });

    document.getElementById('clock').textContent = formatter.format(now);
}


// initial load
updateClock();
setInterval(updateClock, 1000);
</script>
