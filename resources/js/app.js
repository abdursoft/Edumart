import $ from 'jquery';
window.$ = window.jQuery = $;

// Bootstrap
import 'bootstrap';

// marquee
import 'jquery.marquee';

// Select2
import select2 from 'select2/dist/js/select2.full.js';
import 'select2/dist/css/select2.css';
select2(window.$);

import JSZip from 'jszip';
import pdfMake from 'pdfmake/build/pdfmake';
import pdfFonts from 'pdfmake/build/vfs_fonts';

// DataTables + Buttons
import 'datatables.net';
import 'datatables.net-responsive'
import 'datatables.net-buttons'; // includes buttons functionality
import 'datatables.net-buttons/js/buttons.html5.js';
import 'datatables.net-buttons/js/buttons.print';

// Optional: jQuery UI
import 'jquery-ui/themes/base/core.css';
import 'jquery-ui/themes/base/sortable.css';
import 'jquery-ui/themes/base/theme.css';

import 'datatables.net-bs5/css/dataTables.bootstrap5.min.css';
import 'datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css';

// flatpickr
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

window.flatpickr = flatpickr;

// quill text editor
import Quill from 'quill';
import 'quill/dist/quill.snow.css';

import QuillBetterTable from 'quill-better-table';
import 'quill-better-table/dist/quill-better-table.css';

/* Register plugin */
Quill.register(
  {
    'modules/better-table': QuillBetterTable
  },
  true
);

/* Expose globally (because Blade uses it) */
window.Quill = Quill;
window.quillBetterTable = QuillBetterTable;

window.tablePicker = function (quill) {
    return quill.getModule('better-table');
};

// Import Owl Carousel JS + CSS
import { tns } from 'tiny-slider';
window.tns = tns;
// Optional: import tiny-slider CSS
import "tiny-slider/dist/tiny-slider.css"; // this must be exact

//import toastr
import toastr from 'toastr';
import 'toastr/build/toastr.min.css';

// optional config
toastr.options = {
    closeButton: true,
    progressBar: true,
    timeOut: 5000,
};

window.toastr = toastr;

// axios
import axios from 'axios';
window.axios = axios;

// popper js
import { createPopper  } from '@popperjs/core';
window.popper = createPopper ;

// Alpine + FullCalendar
import Alpine from 'alpinejs';
import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
window.Alpine = Alpine;
window.calender = Calendar;
window.dayGrid = dayGridPlugin;
Alpine.start();


// Select all elements with data-title
function loadPopper(){
    document.querySelectorAll('[data-title]').forEach((el) => {
        // Create a tooltip element
        const tooltip = document.createElement('div');
        tooltip.className = 'tooltip'; // you can style this in CSS
        tooltip.innerText = el.getAttribute('data-title');
        tooltip.style.position = 'absolute';
        tooltip.style.background = '#333';
        tooltip.style.color = '#fff';
        tooltip.style.padding = '5px 10px';
        tooltip.style.borderRadius = '4px';
        tooltip.style.fontSize = '13px';
        tooltip.style.zIndex = '9999';
        tooltip.style.pointerEvents = 'none';
        tooltip.style.opacity = '0';
        tooltip.style.transition = 'opacity 0.2s';

        document.body.appendChild(tooltip);

        // Initialize Popper
        const popperInstance = createPopper (el, tooltip, {
            placement: 'top', // default placement
            modifiers: [
                {
                    name: 'offset',
                    options: {
                        offset: [0, 8],
                    },
                },
            ],
        });

        // Show/hide on hover
        el.addEventListener('mouseenter', () => {
            tooltip.style.opacity = '1';
        });
        el.addEventListener('mouseleave', () => {
            tooltip.style.opacity = '0';
        });
    });
}

window.loadPopper = loadPopper;
// DOM ready
document.addEventListener('DOMContentLoaded', () => {
    console.log('jQuery version:', $.fn.jquery);
    console.log('Select2 loaded:', $.fn.select2);
    console.log('DataTables loaded:', $.fn.dataTable);
    console.log('Quill editor loaded:', Quill);

    loadPopper();
});
