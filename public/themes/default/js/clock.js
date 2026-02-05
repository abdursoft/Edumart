// class clock timer 
class ClassTimeRangeTimer {
    constructor(startTime, endTime, displayEl, progressEl, bellEl, options = {}) {
        this.startTime = startTime; // "HH:MM:SS"
        this.endTime = endTime;
        this.display = displayEl;
        this.progress = progressEl;
        this.bell = bellEl;

        this.warningMinutes = options.warningMinutes ?? 5;
        this.onWarning = options.onWarning ?? null;

        this.timer = null;
        this.warned = false;

        this.startDate = this.makeDate(startTime);
        this.endDate = this.makeDate(endTime);
    }

    makeDate(time) {
        const [h, m, s] = time.split(':').map(Number);
        const now = new Date();
        return new Date(now.getFullYear(), now.getMonth(), now.getDate(), h, m, s);
    }

    format(seconds) {
        const h = Math.floor(seconds / 3600);
        const m = Math.floor((seconds % 3600) / 60);
        const s = seconds % 60;
        return `${h.toString().padStart(2, '0')}:${m
            .toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`;
    }

    start() {
        this.timer = setInterval(() => {
            const now = new Date();

            // Not started yet
            if (now < this.startDate) {
                this.display.textContent = this.format(
                    Math.floor((this.endDate - this.startDate) / 1000)
                );
                this.progress.style.width = '100%';
                return;
            }

            const total = Math.floor((this.endDate - this.startDate) / 1000);
            const remaining = Math.floor((this.endDate - now) / 1000);

            // Finished
            if (remaining <= 0) {
                this.finish();
                return;
            }

            // Warning
            if (!this.warned && remaining <= this.warningMinutes * 60) {
                this.warned = true;
                this.onWarning?.();
                this.display.classList.add('text-red-600');
            }

            this.display.textContent = this.format(remaining);

            // Progress bar
            const percent = (remaining / total) * 100;
            this.progress.style.width = percent + '%';

            if (percent < 30) this.progress.classList.replace('bg-green-500', 'bg-yellow-500');
            if (percent < 10) this.progress.classList.replace('bg-yellow-500', 'bg-red-500');
        }, 1000);
    }

    finish() {
        clearInterval(this.timer);
        this.display.textContent = '00:00:00';
        this.progress.style.width = '0%';
        this.bell?.play();
    }
}
