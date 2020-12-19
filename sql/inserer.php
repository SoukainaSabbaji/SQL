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
    
    unset($COURS["ajouter"]); 
    
      /*CREATE SEQUENCE seq_COURS
      MINVALUE 1
      MAXVALUE 99999
      START WITH 1
      INCREMENT BY 1
      CACHE 10;*/
   
    $COURS["NUM_COURS"] = "seq_COURS.nextval";
    $table="COURS";
    
    $dao = new CrudDAO();    
    $dao->insert($table, $COURS) ;
}
    header("C:/wamp64/www/sql/liste.php");
