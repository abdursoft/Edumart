<div class="bg-gray-300 p-2 rounded-md" id="clock"></div>
<script>
function updateClock() {
    const now = new Date();

    let hours = now.getHours(); // 0–23
    const minutes = now.getMinutes();
    const seconds = now.getSeconds();

    const ampm = hours >= 12 ? 'PM' : 'AM';

    hours = hours % 12;
    hours = hours ? hours : 12; // 0 → 12

    const formattedTime =
        hours + ':' +
        String(minutes).padStart(2, '0') + ':' +
        String(seconds).padStart(2, '0') + ' ' +
        ampm;

    document.getElementById('clock').textContent = formattedTime;
}

// update immediately
updateClock();

// update every second
setInterval(updateClock, 1000);
</script>
