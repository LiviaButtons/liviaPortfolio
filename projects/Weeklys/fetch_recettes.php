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


if(isset($_POST["action"]) || isset ($_POST['query'])) {
	$query = "
		SELECT DISTINCT nomRecette, image, idRecette FROM view_cook";
    
    /**/
    
    if(isset($_POST["dureeEnTranche"]) AND empty($_POST["categorie"]) AND empty($_POST["typeDeRepas"]))
	{
		$dureeEnTranche_filter = implode("','", $_POST["dureeEnTranche"]);
		$query .= "
		 WHERE dureeEnTranche IN('".$dureeEnTranche_filter."')
		";  
	}
    
    if(isset($_POST["categorie"]) AND empty($_POST["dureeEnTranche"]) AND empty($_POST["typeDeRepas"]))
	{
		$categorie_filter = implode("','", $_POST["categorie"]);
		$query .= "
         WHERE categorie IN('".$categorie_filter."') 
		"; 
	}
    
    if(isset($_POST["typeDeRepas"]) AND empty($_POST["categorie"]) AND empty($_POST["dureeEnTranche"]))
	{
		$typeDeRepas_filter = implode("','", $_POST["typeDeRepas"]);
		$query .= "
		 WHERE typeDeRepas IN('".$typeDeRepas_filter."')
		"; 
	}
    
    /**/
    
    if(isset($_POST["dureeEnTranche"]) AND isset($_POST["categorie"]) AND empty($_POST["typeDeRepas"]))
	{
		$dureeEnTranche_filter = implode("','", $_POST["dureeEnTranche"]);
        $categorie_filter = implode("','", $_POST["categorie"]);
		$query .= "
         WHERE dureeEnTranche IN('".$dureeEnTranche_filter."') AND categorie IN('".$categorie_filter."')
		";
	}
    
   /**/
    
    if(isset($_POST["categorie"]) AND isset($_POST["typeDeRepas"]) AND empty($_POST["dureeEnTranche"]))
	{
		$categorie_filter = implode("','", $_POST["categorie"]);
        $typeDeRepas_filter = implode("','", $_POST["typeDeRepas"]);
		$query .= "
         WHERE categorie IN('".$categorie_filter."') AND typeDeRepas IN('".$typeDeRepas_filter."')
		";
	}
    
    
    /**/
    
    if(isset($_POST["dureeEnTranche"]) AND isset($_POST["typeDeRepas"]) AND empty($_POST["categorie"]))
	{
		$dureeEnTranche_filter = implode("','", $_POST["dureeEnTranche"]);
        $typeDeRepas_filter = implode("','", $_POST["typeDeRepas"]);
		$query .= "
         WHERE dureeEnTranche IN('".$dureeEnTranche_filter."') AND typeDeRepas IN('".$typeDeRepas_filter."')
		";
	}
    
    /**/
    
    if(isset($_POST["dureeEnTranche"]) AND isset($_POST["categorie"]) AND isset($_POST["typeDeRepas"]))
	{
		$dureeEnTranche_filter = implode("','", $_POST["dureeEnTranche"]);
        $categorie_filter = implode("','", $_POST["categorie"]);
        $typeDeRepas_filter = implode("','", $_POST["typeDeRepas"]);
		$query .= "
         WHERE dureeEnTranche IN('".$dureeEnTranche_filter."') AND categorie IN('".$categorie_filter."') AND typeDeRepas IN('".$typeDeRepas_filter."')
		";   
	}

    /******/
    /******/
    /******/
    /* search function from bar */
    // if you got a query via POST (AKA search)
    if (isset ($_POST['query']) && $_POST['query'] != '') {
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
    
        $input = strip_tags ($_POST['query']); // remove any tags
        $input = trim ($input); // trim spaces
        $input = str_replace ($special, '_', $input); // replace problematic characters with wildcard _ 
        
        // search query
        $query = $sqlSelect . " idRecette, nomRecette, image " . $sqlFrom;
        $statement = $pdo->prepare ($query);
        $statement->bindValue(':input', $input, PDO::PARAM_STR);
    
    } else {
        $statement = $pdo->prepare($query);
    }
    
	$statement->execute();    
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	$total_row = $statement->rowCount();
	$output = '';
    
    /*var_dump($result);*/
    /*var_dump($total_row);*/
	if($total_row > 0)
	{
		foreach($result as $row)
		{
            
			$output .= '
			<div class="pagi " data-total="'.$total_row.'" style="display: none; flex-wrap: wrap; padding:0 4px; justify-content: space-between;">
            
				<div class="listeDeDiv" style="margin-bottom : 60px; width: 240px; height: 360px; posiition: relative;">
                
                    <a class="common_selector filter_data2" href="./preparation.php?code='. $row['idRecette'] .'" style="color : white; text-decoration: none;">
					   <img src="./assets/img_mini/'. $row['image'] .'" alt=""  style="width : 240px; height: 360px; border: 1px solid black; border-radius: 5px;">
                    
                        <div style="box-sizing :border-box; position: absolute; bottom: 0; background: rgb (0,0,0); border: 1px solid black; background: rgba(0,0,0,0.6); color: white; width: 100%, padding: 20px; height: 80px; margin: 0 auto; text-align="center"">
                            <p style="padding-top: 5px; padding-bottom: 5px; padding-right: 10px; padding-left: 10px; text-align: center">'. $row['nomRecette'] .'</p> 
                        </div>
				    </a>		
				</div>
			</div>';
		}
	} else {
		$output = '<p>Aucune recette trouvée.</p>';
	}
    
	echo $output;
}
?>