//Javascript to toggle the menu

window.onload = function(){
    document.getElementById('nav-toggle').onclick = function(){
        document.getElementById("nav-content").classList.toggle("hidden");
    }
}