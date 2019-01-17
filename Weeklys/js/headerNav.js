// This section makes the menu respond to scrolling.  
// If the user scrolls down, the menu scrolls away (and nav closes)
// If they scroll back up, it reappears
// Author: Livia Bottoni
// adapted from https://medium.com/@mariusc23/hide-header-on-scroll-down-show-on-scroll-up-67bbaae9a78c

$(document).ready (function (e) {
    // Hide Header on on scroll down
    var didScroll;
    var lastScrollTop = 0;
    var delta = 1;
    var navbarHeight = 90; // set in CSS

    $(window).scroll(function (event) {
        didScroll = true;
    });

    // Check every 250ms whether a scroll did take place, only launching the function if it did
    setInterval(function () {
        if (didScroll) {
            hasScrolled();
            didScroll = false;
        }
    }, 250);

    function hasScrolled() {
        var st = $(this).scrollTop();

        // Make sure they scroll more than delta
        if (Math.abs(lastScrollTop - st) <= delta) {
            return;
        }

        // If they scrolled down and are past the navbar
        if (st > lastScrollTop && st > navbarHeight) {
            // hide the header through classes (making it go up)
            $('header').removeClass('nav-down').addClass('nav-up');
            // hide the navigation through classes so it doesn't stay open
            $('nav').addClass('tabletHidden'); 
            // visually 'close' the hamburger menu by changing icon
            $('#hamMenu > span').removeClass('fa-times').addClass('fa-bars'); 
            // close the autocomplete menu
            $('.ui-widget, .ui-autocomplete, .ui-menu-item').delay(50).hide(50, 'linear'); 
        } else {
            // Scrolling up, show the header
            if (st + $(window).height() < $(document).height()) {
                $('header').removeClass('nav-up').addClass('nav-down');
            }
        }

        lastScrollTop = st;
    }
})