// Javascript for my portfolio website
// Author: Livia Bottoni

$(document).ready(function (event) {

// -------------------------
// Function for hamburger menu and animation
// animation based on: https://codepen.io/designcouch/pen/Atyop
    // "open" and "close" hamburger Menu upon click
    $('#hamMenu').on("click", function (e) {
        $('#hamMenu').toggleClass('open');
    });
    
    $('.navbar-nav > *').on("click", function (e) {
        // if any of the navigation links are clicked, close the menu
        $('#hamMenu').toggleClass('open').toggleClass('collapsed');
        $('#nav-content').attr('aria-expanded', 'false').toggleClass('in');
    });
    
    
    // ----------------------
    // Function to show/hide portfolio sections
    $('.port-button').on('click', function (e) {
        $clicked = e.target;
        
        if ($($clicked).attr('id') == 'web') {
            // hide everything, show web
            $('.js-design').hide(500);
            $('.js-web').show(500);
        } else if ($($clicked).attr('id') == 'design') {
            // hide everything, show design
            $('.js-web').hide(500);
            $('.js-design').show(500);
        } else {
            // Show all
            $('.port-box').show(500);
        }
    });
    
    
    // --------------------------
    // Function to change active class while scrolling
    $(window).scroll(function () {
        // remove 150px to look nicer
        var portfolioOffset = $('#portfolio').offset().top;
        portfolioOffset = portfolioOffset - 150;
        var aboutOffset = $('#about').offset().top;
        aboutOffset = aboutOffset - 150;
        var contactOffset = $('#contact').offset().top;
        contactOffset = contactOffset - 150;        
        
        if ($(window).scrollTop() < portfolioOffset) {
            // if we're not yet at the height of portfolio
            $('.navbar-nav > *').removeClass('active');
            $('#home-link').addClass('active');
        }         
        else if ($(window).scrollTop() > portfolioOffset && $(window).scrollTop() < aboutOffset) {   
            // if you're at the height of portfolio but not yet about
            $('.navbar-nav > *').removeClass('active');
            $('#portfolio-link').addClass('active');
        } 
        else if ($(window).scrollTop() > aboutOffset && $(window).scrollTop() < contactOffset) {
            // if you're at the height of about but not yet contact
            $('.navbar-nav > *').removeClass('active');
            $('#about-link').addClass('active');
        }
    });
        
    
    // -----------------------------------
    // contact form
    // from the get-go, remove the form fields for testing from the page
    $('.forTest').empty();
    $testValue = $('#forTest').val(); // check whether there's a value
    // if there is... 
    if ($testValue != undefined) {
//            console.log ('test');
            $formIsValid = false;
        }
    
    $('#contactButton').on('click', function (e) {
        $userEmail = $('#email').val(); // retrieve value for email
        $userMsg = $('#message').val(); // retrieve value for msg

        $formIsValid = true; // assume that form is valid
        $msg = ''; // message variable that will contain error/success messages for user

        // email can't be blank, must contain @, must contain .
        if ($userEmail != '' && $userEmail.indexOf('@') > 0 && $userEmail.indexOf('.') > 0) {
            $('#email').removeClass('error');
            $('#email').attr('placeholder', 'Your e-mail (required)');
        } else {
            // if conditions aren't met, add error class and change placeholder
            $('#email').addClass('error');
            $('#email').attr('placeholder', 'Error!');
            // tell form isn't valid
            $formIsValid = false;
            // create error message 
            $msg = $msg + 'Your e-mail address isn\'t valid. ';
        }
        
        // message can't be blank
        if ($userMsg != '') {
            $('#message').removeClass('error');
            $('#message').attr('placeholder', 'Your message (required)');
        } else {
            // if condition isn't met, add error class and change placeholder
            $('#message').addClass('error');
            $('#message').attr('placeholder', 'Error!');
            // tell form isn't valid
            $formIsValid = false;
            // create error message
            $msg = $msg + 'Your message cannot be empty. ';
        }
        
        // if basic validation succeeds, launch Ajax call
        if ($formIsValid) {
            $.ajax ({
                url     : './php/sendMail.php', 
                type    : 'POST', 
                dataType: 'json', 
                data: {
                    email   : $userEmail, 
                    message : $userMsg 
                },
                success: function (data) {
                    // check whether it returns OK (and not error 1, 2 or 3)
                    if (data.result == "OK") {
                        $msg = 'Success! Your message has been sent.';
                        $('.contactMessage').html($msg);
                    } else {
                        $msg = 'There was a technical issue.';
                        $('.contactMessage').html($msg);
                    }
                }, 
                error: function (xhr, status, errorMsg) {
//                    console.log ('Status: ' + status);
//                    console.log ('Error: ' + errorMsg);
                    $('.contactMessage').html('Technical issue.');
                },
                complete: function (xhr, status) {
                }
            });
        } else {
            $('.contactMessage').html($msg);    
        };
    });
    
});