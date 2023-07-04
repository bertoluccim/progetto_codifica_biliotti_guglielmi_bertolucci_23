var show_Persone = false;
var show_Luoghi = false;
var show_Cancellazioni = false;
var show_Unclear = false;


function gestisci_Persone(){
    if(show_Persone){
        document.getElementById("btn_Persone").style.color = "#2b2b2b";
        for(var i = 0;i<document.getElementsByClassName("el_Persone").length;i++){
            document.getElementsByClassName("el_Persone")[i].classList.remove("active");
        }
        show_Persone = false;
    }else{
        document.getElementById("btn_Persone").style.color = "red";
        for(var i = 0;i<document.getElementsByClassName("el_Persone").length;i++){
            document.getElementsByClassName("el_Persone")[i].classList.add("active");
        }
            show_Persone = true;
    }
}

function gestisci_Luoghi(){
    if(show_Luoghi){
        document.getElementById("btn_Luoghi").style.color = "#2b2b2b";
        for(var i = 0;i<document.getElementsByClassName("el_Luoghi").length;i++){
            document.getElementsByClassName("el_Luoghi")[i].classList.remove("active");
        }
        show_Luoghi = false;
    }else{
        document.getElementById("btn_Luoghi").style.color = "#CDF48B";
        for(var i = 0;i<document.getElementsByClassName("el_Luoghi").length;i++){
            document.getElementsByClassName("el_Luoghi")[i].classList.add("active");
        }
            show_Luoghi = true;
    }
}

function gestisci_Cancellazioni(){
    if(show_Cancellazioni){
        document.getElementById("btn_Cancellazioni").style.color = "#2b2b2b";
        document.getElementById("btn_Cancellazioni").style.textDecoration = "none";
        for(var i = 0;i<document.getElementsByClassName("el_Cancellazioni").length;i++){
            document.getElementsByClassName("el_Cancellazioni")[i].classList.remove("active");
        }
        show_Cancellazioni = false;
    }else{
        document.getElementById("btn_Cancellazioni").style.color = "#9000ff";
        document.getElementById("btn_Cancellazioni").style.textDecoration = "line-through #9000ff";
        for(var i = 0;i<document.getElementsByClassName("el_Cancellazioni").length;i++){
            document.getElementsByClassName("el_Cancellazioni")[i].classList.add("active");
        }
            show_Cancellazioni = true;
    }
}

function gestisci_Unclear(){
    if(show_Unclear){
        document.getElementById("btn_Unclear").style.color = "#2b2b2b";
        document.getElementById("btn_Unclear").style.textDecoration = "none";
        for(var i = 0;i<document.getElementsByClassName("el_Unclear").length;i++){
            document.getElementsByClassName("el_Unclear")[i].classList.remove("active");
        }
        show_Unclear = false;
    }else{
        document.getElementById("btn_Unclear").style.color = "#002aff";
        document.getElementById("btn_Unclear").style.textDecoration = "underline wavy #002aff";
        for(var i = 0;i<document.getElementsByClassName("el_Unclear").length;i++){
            document.getElementsByClassName("el_Unclear")[i].classList.add("active");
        }
        show_Unclear = true;
    }
}

function gestisci_Abbreviazioni(){
    if(show_Abbreviazioni){
        for(var i = 0;i<document.getElementsByClassName("el_Puntaggiature").length;i++){
            document.getElementsByClassName("el_Abbreviazioni").classList.remove("active");
        }
        show_Abbreviazioni = false;
    }else{
        for(var i = 0;i<document.getElementsByClassName("el_Puntaggiature").length;i++){
            document.getElementsByClassName("el_Abbreviazioni").classList.add("active");
        }
        show_Abbreviazioni = true;
    }
}

function gestisci_Puntaggiature(){
    if(show_Puntaggiature){
        for(var i = 0;i<document.getElementsByClassName("el_Puntaggiature").length;i++){
            document.getElementsByClassName("el_Puntaggiature")[i].classList.remove("active");
        }
        show_Puntaggiature = false;
    }else{
        for(var i = 0;i<document.getElementsByClassName("el_Puntaggiature").length;i++){
            document.getElementsByClassName("el_Puntaggiature")[i].classList.add("active");
        }
            show_Puntaggiature = true;
    }
}

window.onscroll = function() {stickynav()};
var navbar = document.getElementsByClassName("pulsantiera")[0];

var sticky ;

function stickynav() {
  if (window.scrollY >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
} 

function apri_info_tab(el){
    var n = el.getAttribute("count");
    for(var i=0;i<document.getElementsByClassName("titoli").length;i++){
        document.getElementsByClassName("titoli")[i].style.opacity = "0";
        document.getElementsByClassName("navbar_info_btn")[i].style.textDecoration = "none";
    }
    document.getElementsByClassName("navbar_info_btn")[n].style.textDecoration = "underline";

    window.setTimeout(apri_info_tab_delayed,500,n)
}

function apri_info_tab_delayed(n){
    document.getElementsByClassName("titoli")[n].style.opacity = "1";
}


function attribuisci_indici_infotab(){
    var maxh = 0;
    for(var i=0;i<document.getElementsByClassName("navbar_info_btn").length;i++){
        document.getElementsByClassName("navbar_info_btn")[i].setAttribute('count',i);
        var h = document.getElementsByClassName("titoli")[i].getBoundingClientRect().height;
        if ( h > maxh) {
            maxh = h;
        }
    }
    document.getElementsByClassName("porta_titoli")[0].style.height = maxh+"px";
    document.getElementsByClassName("titoli")[0].style.opacity = "1";
    document.getElementsByClassName("navbar_info_btn")[0].style.textDecoration = "underline";
}

function load(){
    attribuisci_indici_infotab();
    sticky = navbar.offsetTop;
}

window.onload = load;