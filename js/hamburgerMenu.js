// Simple JavaScript for a hamburger menu on a responsive website 
// Author: Livia Bottoni 
// based on: https://codepen.io/designcouch/pen/Atyop

$(document).ready(function (event) {
    // "open" and "close" hamburger Menu upon click
    $('#hamMenu').on("click", function (e) {
        $('#hamMenu').toggleClass('open');
        console.log (e.target);
    });
    
    $('.navbar-nav > *').on("click", function (e) {
        // if any of the navigation links are clicked, close the menu
        $('#hamMenu').toggleClass('open').toggleClass('collapsed');
        $('#nav-content').attr('aria-expanded', 'false').toggleClass('in');
        
        // also, change the active attribute to the link that was clicked
        $('.navbar-nav > *').removeClass('active');
        console.log (e.target);
        $current = e.target;
        $parent = $($current).parent();
        $($parent).addClass('active');
    });
    
    // next step: change active class when scrolling
    // AKA: once you pass #portfolio.height, switch the classes 
    // or something along those lines
});