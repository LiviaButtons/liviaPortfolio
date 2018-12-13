// Javascript for my portfolio website
// Author: Livia Bottoni


// -------------------------
// Function for hamburger menu and animation
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
    
        // next step: change active class when scrolling
        // AKA: once you pass #portfolio.height, switch the classes 
        // or something along those lines
        // also: generally get a scroll effect when navigating menu ----- pure CSS done
        
    });
    
    
    
    
    // ----------------------
    // Function to show/hide portfolio sections
    $('.port-button').on('click', function (e) {
        $clicked = e.target;
        
        if ($($clicked).attr('id') == 'web') {
            // hide everything, show web
            $('.port-box').hide();
            $('.js-web').show();
        } else if ($($clicked).attr('id') == 'design') {
            // hide everything, show design
            $('.port-box').hide();
            $('.js-design').show();
        } else {
            // Show all
            $('.port-box').show();
        }
        
        // next step: animation on show/hide
    });
});