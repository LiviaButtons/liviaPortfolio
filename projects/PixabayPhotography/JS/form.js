/* ------------------------------------------------- */
//Only if the page is loaded will the Modal be able to start
document.addEventListener("DOMContentLoaded", function(event) { 

    //Get the element with the ID "shoottype" (AKA my dropdown list)
    var formPet = document.getElementById("shoottype");

    //petKind is the element with the ID "petKind" (AKA my question on which kind of pet)
    var petKind = document.getElementById("petKind");
    
    //Collect all elements with the class of "pets" (the labels and checkpoints of the petKind question) in an ARRAY
    var petsChecked = document.querySelectorAll(".pets");


    //Building the function that will hide or show the question in my form
    function petSelected() {
            
            //If the value from the form dropdown (formPet) is one that has indeed got a pet....
            if (formPet.value == "s3" || formPet.value == "s4" || formPet.value == "s5" || formPet.value == "s6") 
            {
                //Display the question (which type of animal)
                petKind.style['display'] = 'inline-block';
                
                //Since the petKind answers are saved in an array, we're going to have to loop through them to make all of them visible. We can do that with a simple counter
                for (var i = 0; i < petsChecked.length; i ++) {
                    petsChecked[i].style['display'] = 'inline-block';
                };            
            }
            
            //IF the value from the dropdown form ISN'T pet, hide the question and answers
            else {
                petKind.style['display'] = 'none';

                for (var i = 0; i < petsChecked.length; i ++) {
                    petsChecked[i].style['display'] = 'none';
                };
            }
        }
    
    //If there's a change in my select dropdown form, exectue my function
    formPet.addEventListener("change", petSelected);    
    

});
