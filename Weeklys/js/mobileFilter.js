// Simple JavaScript for filter on recipe page
// to open up and close filter selection on button-click
// Author: Livia Bottoni

$(document).ready(function (event) {
    $width = $(window).width();
    
    if ($width < 950) {
        // create a button, style it, add it after h2
        $button = document.createElement ('button');
        $($button).addClass ('filterButton');
        $($button).css({
            /*'background-color': '#869e40',
            'height': '40px',
            'border': '1px solid transparent',
            'border-radius': '5px',
            'font-family': 'LatoBold',
            'text-transform': 'uppercase',
            'color': '#FFF',
            'width': '50%'*/
        });
        $($button).html('Filtrer');
        $($button).appendTo('.un');
        
        // hide section 1, make section 2 larger
        $('#section1').hide('slide', {direction: 'left' }, 300);
        $('#section2').css({
            'width': '90%',
            'margin-left': 'auto',
            'margin-right': 'auto'            
        });
        
        // when clicking onto the button, alter section 1's CSS and show it
        // better: apply a class which is styled in mobile CSS
        $($button).on('click', function (e) {
            $('#section1').css({
                'z-index': 999,
                'position': 'fixed',
                'top': 0,
                'left': '0',
                'width': '100%',
                'margin-left': 'auto',
                'margin-right': 'auto'
            });
            
            // class for styling in CSS stylesheet
            $('#section1').addClass('filtreMobile');
            
            // Create a "close button" and insert it at the top of filter (before the first h3)
            $newSpan = document.createElement('span');
            $($newSpan).addClass('fas fa-times fa-2x closeFilter').css({
                'position': 'absolute',
                'top': '10px',
                'right': '20px'
            });
            $('#section1 > div > h3:nth-of-type(1)').before($newSpan);
            
            // when the "close button" is in place, show the filters
            $('#section1').show('slide', {direction: 'left' }, 300)
            
            // closer filter upon clicking of "close button"
            $('.closeFilter').on('click', function() {
                $('#section1').hide('slide', {direction: 'left'}, 300); 
            });
        })
        
        $('#section1 > div').on('click', function (ev) {            
            if (ev.target == this) {
                // hide if click didn't occur on a child (aka form or checkbox)
                $('#section1').hide('slide', {direction: 'left'}, 300); 
            };
        });
    }; 
});