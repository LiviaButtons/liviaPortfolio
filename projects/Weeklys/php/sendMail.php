<?php
header ('Cache-Control: no-cache'); // don't save any info (risks sending request with old data)
header ('Content-Type: application/json'); // tell PHP what kind of data to expect & output

//if a values were received in POST
if (isset ($_POST['email'], $_POST['message'])) {
    // pass them through basic validation
    if (filter_var($_POST['email'], FILTER_VALIDATE_EMAIL) !== false && $_POST['message'] != '') {
        // stock POST values in variables 
        $email = $_POST['email'];
        // remove unnecessary spaces and any HTML tags
        $message = trim(strip_tags($_POST['message']));
        // define recipient
        $recipient = 'l.bottoni@interface3.be';
        // and standard subject
        $subject = 'Weekly\'s - new message from contact form';
        // add recipient info and message in the body of the mail
        $body = 'The following person tried to contact you: ' . $email . '. This is their message: ' . $message;
        
        // try to send the email
        if (@mail ($recipient, $subject, $body)) {
            echo '{"result": "OK"}';
        } else {
            // error: technical problem of Daemon Mail or Apache server
            echo '{"result": "Error 3"}';
        }
        
    } else {
        // error: bad values received in post
        echo '{"result": "Error 2"}';
    }
    
} else {
    // error: nothing received in post
    echo '{"result": "Error 1"}';
}
?>