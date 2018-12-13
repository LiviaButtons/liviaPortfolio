// Simple JavaScript for a hamburger menu on a responsive website 
// Author: Livia Bottoni 


//    // on click: 
//    // if (button 'hamMenu' has attribute aria-hidden="false") {
//        // show span with three bars
//    // }
//    // elseif (hamMenu is "open") {
//        // replace the three spans of "icon-bar" with span of cross
//        // since we have three individual icons of bars, maybe animate them into a cross?
//    //}

$(document).ready(function (event) {
    $('#hamMenu').on("click", function (e) {
        $('#hamMenu').toggleClass('open');
        console.log (e.target);
    });
});