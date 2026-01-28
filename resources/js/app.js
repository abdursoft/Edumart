import './bootstrap';
import Alpine from 'alpinejs'
import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
// import interactionPlugin from '@fullcalendar/interaction';

window.Alpine = Alpine;
window.calender = Calendar;
window.dayGrid = dayGridPlugin;

Alpine.start()
