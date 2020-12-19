<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header('Content-Type: text/html ; charset=utf-8');
echo "<meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\" />";
require_once 'C:/wamp64/www/sql/CrudDAO.Class.php';

$NUM_COURS = isset($_GET["NUM_COURS"]);
$table="COURS";
$critere="NUM_COURS=".$NUM_COURS;
if(isset($NUM_COURS) && $NUM_COURS>0){

$dao = new CrudDAO();

$dao->delete($table, $critere);

}
 header("C:/wamp64/www/sql/liste.php");