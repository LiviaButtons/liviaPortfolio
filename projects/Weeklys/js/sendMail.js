// Simple application for a contact form
// basic validation on JS side, with error messages displayed as needed
// Author: Livia Bottoni

$(document).ready(function (event) {
    $('#contactButton').on('click', function (e) {
        $userEmail = $('#email').val(); // retrieve value for email
        $userMsg = $('#message').val(); // retrieve value for msg

        $formIsValid = true; // assume that form is valid
        $msg = ''; // message variable that will contain error/success messages for user
        
        // email can't be blank, must contain @, must contain .
        if ($userEmail != '' && $userEmail.indexOf('@') > 0 && $userEmail.indexOf('.') > 0) {
            $('#email').removeClass('error');
            $('#email').attr('placeholder', 'Adresse mail');
    
        } else {
            // if conditions aren't met, add error class and change placeholder
            $('#email').addClass('error');
            $('#email').attr('placeholder', 'Erreur !');
            // tell form isn't valid
            $formIsValid = false;
            // create error message 
            $msg = $msg + 'Votre adresse mail n\'est pas valable. ';
        }
        
        // message can't be blank
        if ($userMsg != '') {
            $('#message').removeClass('error');
            $('#message').attr('placeholder', 'Message');
        } else {
            // if condition isn't met, add error class and change placeholder
            $('#message').addClass('error');
            $('#message').attr('placeholder', 'Erreur !');
            // tell form isn't valid
            $formIsValid = false;
            // create error message
            $msg = $msg + 'Votre message ne peut pas être vide! ';
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
//                    console.log (data)
                    // perhaps check condition that it returns result: OK
                    $msg = 'Succès ! Votre message a été envoyé. '
                    $('.contactMessage').html($msg);
                }, 
                error: function (xhr, status, errorMsg) {
//                    console.log ('Status: ' + status);
//                    console.log ('Error: ' + errorMsg);
                    $('.contactMessage').html('Oups, il y a eu un problème technique.');
                },
                complete: function (xhr, status) {
                }
            });
        } else {
            $('.contactMessage').html($msg);    
        };
    });
});