/* ------------------------------------------------- */
//Only if the page is loaded will the Modal be able to start
document.addEventListener("DOMContentLoaded", function(event) { 
    //do work
    var slideIndex = 1;
    showSlides(slideIndex);
});

/* ------------------------------------------------- */
// Open the Modal
function openModal() {
    document.getElementById('myModal').style.display = "block";
}

// Close the Modal
function closeModal() {
    document.getElementById('myModal').style.display = "none";
}

// Next/previous controls
function plusSlides(n) {
    showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    
    if (n > slides.length) {
        slideIndex = 1
    }
    
    if (n < 1) {
        slideIndex = slides.length
    }
    
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    
    slides[slideIndex-1].style.display = "block";
}

