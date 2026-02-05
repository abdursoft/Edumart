<div id="{{$container}}"></div>
@push('scripts')
<script>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('{{$container}}');
    var calendar = new window.calender(calendarEl, {
        plugins: [window.dayGrid],
        initialView: 'dayGridMonth',
        events: '{{$eventRoute}}'
    });
    calendar.render();
  });
</script>
@endpush
