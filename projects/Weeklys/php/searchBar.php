<?php
    header ('Cache-Control: no-cache'); // don't keep this file in cache
    header ('Content-Type: application/json'); // generate/expect JSON, NOT HTML or text

    // use the config file
    require_once('./config/config.php');
    
    // Create connection to the database
    try {
        $pdo = new PDO(MYSQL_DSN, DB_USER, DB_PWD);
    }
    //die if it doesn't work
    catch (Exception $e){
        die ('Erreur: '.$e->getMessage());
    }
    


    // Create SQL request leaving a placeholder for user input
    // compare lowercase to lowercase to ensure matches despite capitalisation
    // add wildcard on either end so it doesn't need exact match
    $sqlSelect = "SELECT DISTINCT";
    $sqlFrom = "FROM view_recettes
                WHERE LOWER(nomRecette) LIKE CONCAT('%', LOWER(:input), '%')
                    OR LOWER(ingredient) LIKE CONCAT('%', LOWER(:input), '%')
                    OR LOWER(typeDeRepas) LIKE CONCAT('%', LOWER(:input), '%')
                    OR LOWER(categorie) LIKE CONCAT('%', LOWER(:input), '%')"; 

    // regular and special characters that could cause issues with match
    $special = array ('à', 'è', 'é', 'ò', 'ù', 'â', 'ê', 'î', 'ô', 'û', 'ë', 'ï', 'ç', 'É', 'À', 'È', 'Ù', 'Â', 'Ê', 'Î', 'Ô', 'Û', 'Ë', 'Ï', 'Ç', 'Ä', 'ä', 'Ö', 'ö', 'Ü', 'ü', 'ß', 'Œ', 'œ', 'e', 'a', 'i', 'o', 'u', 'c');
//    var_dump ($_POST);
//    echo $_POST['query'];
//    $_POST['query'] = 'gyoza';
    
    // if you got a value via POST
    if (isset ($_POST['query']) && $_POST['query'] != '') {
        $input = strip_tags ($_POST['query']); // remove any tags
        $input = trim ($input); // trim spaces
        $input = str_replace ($special, '_', $input); // replace problematic characters with wildcard _ 
        
        // search query
        $bigSearch = $sqlSelect . " idRecette, nomRecette, image " . $sqlFrom;

        // Prepare the request (send to server)
        $statement = $pdo->prepare ($bigSearch);

        // Inject user input into the query
        $statement->bindValue(':input', $input, PDO::PARAM_STR);

        // Execute the request in the server
        $statement->execute();

        // Something not working?
//        var_dump ($statement->errorInfo());

        // Put results into a table
        $searchResults = $statement->fetchAll(PDO::FETCH_ASSOC);

        // Encode results and send them back
        
        // if successfull (AKA find more than one result)
//        if (count($searchResults) > 0) {
//            header("Location: ../recipes.html?query=" . $_POST['query']);
            echo json_encode($searchResults);
//        } else {
//            header("Location: ../recipes.html");
//            echo ('Pas de résultats pour la recherche de ' . $_POST['query'] . '. Voici toutes nos recettes !');
//        }
    }
    
    if (isset ($_GET['term']) && $_GET['term'] != '') {
        $input = strip_tags ($_GET['term']); // remove tags
        $input = trim($input); // remove spaces
        $input = str_replace ($special, '_', $input); // replace chars
        
        $autoSQL = $sqlSelect . ' idRecette, nomRecette ' . $sqlFrom . ' LIMIT 5';
        
        $statement = $pdo->prepare ($autoSQL);
        $statement->bindValue (':input', $input, PDO::PARAM_STR);
        $statement->execute();
        $autoList = $statement->fetchAll(PDO::FETCH_ASSOC);
        
        $arr = array();
        for ($i = 0; $i < count($autoList); $i++) {
//            $arr[$i]->name = $autoList[$i].nomRecette;
            array_push($arr, array('value'=>$autoList[$i]['nomRecette'], 'name'=>$autoList[$i]['idRecette'],));
//            echo $autoList[$i]['nomRecette'];
        }
//        var_dump ($arr);
//        echo json_encode($autoList);
        echo json_encode($arr);
    }
?>