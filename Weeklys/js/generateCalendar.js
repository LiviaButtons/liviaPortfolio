/* Code with AJAX to connect to database and retrieve information */
/* used to populate the meal plan on the homepage w/o reloading page */
/* and swap individual recipes w/o reloading page */
/* Author: Livia Bottoni */

$(document).ready (function (ev) {
    // load data into calendar once the page is loaded
    getDisplayData();
    
    $('#calendarGenerator').on("click", function (e) {
    // on button click, load new data
        e.preventDefault ();
        getDisplayData();
    });
    
    $('#vege').on("click", function (e) {
    // on checking/unchecking vegetarian option, load data
        getDisplayData();
    });
    
    $('.fa-sync-alt').on("click", function (e) {
    // when clicking on reload icon
        // retrieve which symbol was clicked
        $clickedSymbol = e.target;
        // retrieve sibling of clicked element (div containing recipe)
        $sibling = $clickedSymbol.previousElementSibling;
        // launch function to reload that recipe
        swapRecipe($sibling);
    })
    
    // function for entire calendar
    function getDisplayData () {
        let xhr = new XMLHttpRequest;

        xhr.onreadystatechange = function (event) {
            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    $results = JSON.parse(xhr.responseText);
//                    console.log (xhr.responseText);
//                    console.log ($results);
                    
                    // Split the results into relevant categories
                    $breakfast = $results[0];
                    $lunch = $results[1];
                    $dinner = $results[2];
                    
                    function buildInjectLink (arr, section) {
                        // build loop for 7 instances (7 weekday)
                        for ($x = 0; $x < 7; $x++) {
                            // create new link a
                            $link = document.createElement('a');
                            // build URL, removingspaces from recipe name to do so
                            $url = arr[$x].nomRecette.replace(/\s/g, '');
                            
                            // give link necessary attributes
                            $($link).attr({
                                'href': './preparation.php?code=' + arr[$x].idRecette,
                                'alt': arr[$x].nomRecette
                            });
                            
                            // Inside the link, show the name of the recipe
                            $($link).html(arr[$x].nomRecette);  
                            
                            // Add the recipe to the appropriate section
                            $rSection = $(section).get($x);
                            $($rSection).html($link);
                        };
                    };
                    
                    buildInjectLink ($breakfast, '.recipeB');
                    buildInjectLink ($lunch, '.recipeL');
                    buildInjectLink ($dinner, '.recipeD');
                
                } else {
                    console.log ('Error! ' + xhr.status);
                }
            }
        }

        xhr.open ('POST', './php/generateCalendar.php');
        xhr.setRequestHeader ('Content-type', 'application/x-www-form-urlencoded');
        
        if ($('#vege').is(':checked')) {
            xhr.send ('gen=whole&vege=true');
        } else {
            xhr.send ('gen=whole');
        };
    };
    
    // function for individual recipe
    function swapRecipe (sibling) {     
        let xhr = new XMLHttpRequest();
        
        xhr.onreadystatechange = function (event) {
            if (xhr.readyState == 4) {
                if (xhr.status == 200) {
                    $results = JSON.parse(xhr.responseText);
//                    console.log (xhr.responseText);
//                    console.log ($results);
                    
                    // create new link, build URL, give link attributes
                    $newLink = document.createElement('a');
//                    $newUrl = $results[0].nomRecette.replace(/\s/g, '');
                    $($newLink).attr({
                        'href': './preparation.php?code=' + $results[0].idRecette,
                        'alt': $results[0].nomRecette
                    });
                    $($newLink).html($results[0].nomRecette);
                    
                    // inject new recipe + link into relevant section
                    $(sibling).html($newLink);
                
                } else {
                    console.log ('Error! ' + xhr.status);
                }
            }
        }

        xhr.open ('POST', './php/generateCalendar.php');
        xhr.setRequestHeader ('Content-type', 'application/x-www-form-urlencoded');
        
        // check whether the clicked element is from breakfast, lunch or dinner
        // send information over accordingly
        if (sibling.className === "recipe recipeB") {
            xhr.send ("meal=breakfast");
        } else if (sibling.className === "recipe recipeL") {
            xhr.send ("meal=lunch");
        } else {
            xhr.send ("meal=dinner");
        }
    }
});