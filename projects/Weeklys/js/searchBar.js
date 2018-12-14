// This is the search function for the Weekly's project
// Author: Livia Bottoni

$(document).ready (function (event) {
// launch autocomplete
    $("#search1").autocomplete({
        source: './php/searchBar.php',
        appendTo: "#autosearch",
        delay: 500,
        // when an autocomplete link is selected
        select: function (event, ui) {  
            // navigate to that recipe's page
            window.location.href= './preparation.php?code=' + ui.item.name;
        }
    });

    $( "#search2" ).autocomplete({
        source: './php/searchBar.php',
        appendTo: "intro > .dbSearch",
        delay: 500,
        // when an autocomplete link is selected
        select: function (event, ui) {
            // navigate to that recipe's page
            window.location.href= './preparation.php?code=' + ui.item.name;
        }
    });  
    
// launch regular search
    $('.searchButton').on("click", function (e) {
//        console.log (e.target);
        $clickedButton = e.target;
        
        // if they clicked button1, take input1's value
        if ($clickedButton.id == 'searchButton1') {;
            $searchTerm = $('#search1').val();
        } else if ($clickedButton.id == 'searchButton2') {
        // if they clicked button2, take inptu2's value
            $searchTerm = $('#search2').val();
        }

        // if you received a search term, redirect to recipe page with query
        if ($searchTerm != '') {
//            search($searchTerm);
            window.location.href = './recettes.php?query=' + $searchTerm;
        } else {
        // else, just redirect to standard recipe page
            window.location.href = './recettes.php';
        }
    });
});