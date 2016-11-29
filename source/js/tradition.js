document.addEventListener("DOMContentLoaded", function(event) { 
    document.querySelector('#toggle').addEventListener('click', function() {
        document.querySelector('#vertical-menu').classList.toggle('hidden');
    }, false);
});
