<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header('Content-Type: text/html ; charset=utf-8');
echo "<meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\" />";
require_once 'C:/wamp64/www/sql/CrudDAO.Class.php';

$dao = new CrudDAO();


$stid = $dao->read("COURS");
echo"<style type='text/css'> th, td{padding:10px;} </style>";
echo "<a href='nvcrs.php'>Ajouter un cours</a><hr/>";
print "<table border='1' cellspacing='0'>"
      ."<tr  style='padding:10px; margin:10px;'><th>NUM_COURS</th>  <th>DUREE_COURS</th>  <th>DESCRIPTION_</th>  <th>DATE_DIFF_COURS</th> <th>SEMESTRE</th>  <th>MODULE_FORMAT</th> <th>FIL_ETD</th><th colspan='2'>Action</th></tr>";
$i=0;
while ($row = oci_fetch_array($stid)) {
   
   print '<tr>';
   print "<td>".$row["NUM_COURS"]." </td> "
        ."<td>".$row["DUREE_COURS"]."</td>"
        ."<td>".$row["DESCRIPTION_"]."</td>"
        ."<td>".$row["DATE_DIFF_COURS"]."</td>"
        ."<td>".$row["SEMESTRE"]."</td>"
        ."<td>".$row["MODULE_FORMAT"]."</td>"
        ."<td>".$row["FIL_ETD"]."</td>"; 
   echo  "<td> <a href='modifier.php?id=".$row["NUM_COURS"]."'>Modifier</a></td>";
   echo  "<td> <a href='supprimer.php?id=".$row["NUM_COURS"]."'>Supprimer</a></td>";
   print '</tr>';

//var_dump($row);
$i++;
}
print '</table>';

