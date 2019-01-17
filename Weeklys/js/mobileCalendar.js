// Allows navigation between the different weekdays of the meal planner
// on mobile website
// Author: Livia Bottoni

$(document).ready (function (ev) {
    $('.jsLeftButton').on('click', function (e) {    
        // target the grandparent of the button that was clicked
        // and get the index of the clicked element
        $parent = $(this).parent().parent();
        $index = $parent.index();
        $minusIndex = $index - 1;

        // hide all calendar sections
        // Also make sure to add mobileHidden class
        $('#weeklyCalendar').children().hide().addClass('mobileHidden');

        // if index is smaller than 0 (AKA you're on Monday and going back)
        if ($minusIndex < 0) {
            $minusIndex = 6;
            $('#weeklyCalendar > .calendarSection:nth-of-type(7)').show('slide', { direction: "left" }, 300).removeClass('mobileHidden');
            $('#weeklyCalendar > .calendarSection:nth-of-type(1)').hide('slide', { direction: "left" }, 300).addClass('mobileHidden');
        }

        // Show the previous calendar section
        $parent.prev().show('slide', {direction: 'left' }, 300);
    });

    $('.jsRightButton').on('click', function (event) {        
        $parent = $(this).parent().parent();
        $index = $parent.index();
        $plusIndex = $index + 1;

        // hide all calendar sections
        $('#weeklyCalendar').children().hide().addClass('mobileHidden');

        // if index is bigger than 6 (AKA you're on Sunday and going forward)
        if ($plusIndex > 6) {
            $plusIndex = 0;
            $('#weeklyCalendar > .calendarSection:nth-of-type(1)').show('slide', { direction: 'right' }, 300).removeClass('mobileHidden');
            $('#weeklyCalendar > .calendarSection:nth-of-type(7)').hide('slide', { direction: 'right' }, 300).addClass('mobileHidden');            
        }

        // Show the next calendar section
        $parent.next().show('slide', { direction: 'right' }, 300).removeClass('mobileHidden');
    });
    
    $(window).resize(function() {
        if (!window.matchMedia('(min-width: 850px)').matches) {
            $('#weeklyCalendar').children().hide().addClass('mobileHidden');
            $('#weeklyCalendar > .calendarSection:nth-of-type(1)').show().removeClass('mobileHidden');
        } else {
            $('#weeklyCalendar').children().show().removeClass('mobileHidden');
        }
    })
});