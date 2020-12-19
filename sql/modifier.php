<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header('Content-Type: text/html ; charset=utf-8');
echo "<meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\" />";
require_once 'C:/wamp64/www/sql/CrudDAO.Class.php';

if(isset($_POST)){
    
    $COURS = array();        
    
    foreach ($_POST as $key => $value) {
        $COURS[$key] = $value;
    }
    
    $table="COURS";
    $critere="NUM_COURS=".isset($COURS["NUM_COURS"]);
     
    unset($COURS["NUM_COURS"]);
    unset($COURS["ajouter"]);

    $dao = new CrudDAO();
    $dao->update($table, $COURS, $critere);
}

 //header("C:/wamp64/www/sql/liste.php");


