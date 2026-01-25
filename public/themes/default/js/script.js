
document.addEventListener('click', function (e) {
    if (!e.target.closest('.accordion-btn')) return;

    const btn = e.target.closest('.accordion-btn');
    const content = document.getElementById(btn.dataset.target);
    const icon = btn.querySelector('svg');

    content.classList.toggle('hidden');
    icon.classList.toggle('rotate-180');
});
