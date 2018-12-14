<?php

require_once('./php/config/config.php');  

try {

    $pdo = new PDO(MYSQL_DSN, DB_USER, DB_PWD);  
}
catch (PDOException $e) {

    echo $e->getMessage();
    $pdo = null; 
    die();
}
$idRecettenum = $_POST["idRecetteNumber"]*1;
$queryIngredients = 'SELECT t_recette.serving, t_recette.idRecette, t_ingredientrecette.ingredientQuantite, t_ingredientrecette.ingredientMesure, t_ingredient.nomIngredient, t_recette.difficulte   FROM t_recette 
                            JOIN t_ingredientrecette
	                           ON t_ingredientrecette.idRecette = t_recette.idRecette
                            JOIN t_ingredient
	                           ON t_ingredient.idIngredient = t_ingredientrecette.idIngredient

                        WHERE t_recette.idRecette = ' . $idRecettenum ;
    $statement = $pdo->prepare($queryIngredients);
    $statement->execute();
    $ingredients = $statement->fetchAll(PDO::FETCH_ASSOC);
 
if (isset($_POST["inputServing"])){
                           
    for ($i = 0; $i < count($ingredients); $i++){
        if($ingredients[$i]['ingredientQuantite'] != 0){
            echo '<li>' . ceil((($ingredients[$i]['ingredientQuantite'] / $ingredients[$i]['serving']) * $_POST["inputServing"])). ' ' . $ingredients[$i]['ingredientMesure'] . ' ' . $ingredients[$i]['nomIngredient'] . '</li>';
        }else {
            echo '<li>' . ' ' . $ingredients[$i]['ingredientMesure'] . ' ' . $ingredients[$i]['nomIngredient'] . '</li>';
        }
    }   
}

?>