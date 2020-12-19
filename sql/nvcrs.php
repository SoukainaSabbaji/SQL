<?php
header('Content-Type: text/html ; charset=utf-8');
echo "<meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\" />";
$url="";
$COURS= array("NUM_COURS"=>"", "DUREE_COURS"=>"", "DESCRIPTION_"=>"", "DATE_DIFF_COURS"=>"", "SEMESTRE"=>"", "MODULE_FORMAT"=>"", "FIL_ETD"=>"");
$id=0;
$iduser=0;
$label="";
if(isset($_GET["NUM_COURS"]) && $_GET["NUM_COURS"]>0){

$NUM_COURS = $_GET["NUM_COURS"];
$url="Modifier.php";
$label="Modifier";

require_once 'CrudDAO.Class.php';
$dao = new CrudDAO();

$stid = $dao->read("COURS", null, "where NUM_COURS=".$NUM_COURS);
oci_fetch_all($stid, $COURS2);

$iduser = $res["NUM_COURS"][0];
$Duree_Cours=$res["DUREE_COURS"][0];
$Description_=$res["DESCRIPTION_"][0];


$iduser = $COURS2["NUM_COURS"][0];
$COURS["NUM_COURS"]=$COURS2["NUM_COURSs"][0];
$COURS["DUREE_COURS"]=$COURS2["DUREE_COURS"][0];
$COURS["DESCRIPTION_"] = $COURS2["DESCRIPTION_"][0];
$COURS["DATE_DIFF_COURS"] = $COURS2["DATE_DIFF_COURS"][0];
$COURS["SEMESTRE"] = $COURS2["SEMESTRE"][0];
$COURS["MODULE_FORMAT"] = $COURS2["MODULE_FORMAT"][0];
$COURS["FIL_ETD"] = $COURS2["FIL_ETD"][0];

if(isset($iduser) && $iduser>0){
$url="Modifier.php";
$label="Modifier";
}else{
$url="inserer.php";
$label="Ajouter";
}

}else{
$url="inserer.php";
$label="Ajouter";
}
?>
<style type="text/css">
    body{ font-family: 'Trebuchet MS', 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Tahoma, sans-serif;}
    
    input[type="text"], input[type="text"], select{ 
        width: 20%;
        height: 30px;
        padding: 5px;
        border: 1px solid #ccc ;        
        border-radius: 3px;
        box-shadow: 0px 2px 2px #ccc;
    }
    
    input[type="submit"]{
        background: #666;        
        color: #fff;
        width: 100px;
        height: 30px;
        padding: 5px;
        border: 1px solid #ccc ;        
        border-radius: 3px;
        box-shadow: 0px 2px 2px #ccc;
        cursor: pointer;
    }   
    
    input[type="submit"]:hover{
            background: #ccc;        
            color: #333;
    }
    
     hr{ width: 0%; opacity: 0;}
</style>

<form method="post" action="<?=$url ?>">
<input type="hidden" name="NUM_COURS" id="NUM_COURS" value="<?=$iduser ?>"/>
Duree_Cours:<br/>
<input type="text" name="Duree_Cours" id="Duree_Cours" value="<?=$COURS["DUREE_COURS"] ?>" /><hr/>
Description_:<br/>
<input type="text" name="Description_" id="Description_" value="<?=$COURS["DESCRIPTION_"] ?>" /><hr/>
</select><hr/>
DATE_DIFF_COURS:<br/>
<input type="text" name="DATE_DIFF_COURS" id="DATE_DIFF_COURS" value="<?=$COURS["DATE_DIFF_COURS"] ?>" /><hr/>

Semestre:<br/>
<input type="text" name="Semestre" id="Semestre" value="<?=$COURS["SEMESTRE"] ?>" /><hr/>

Module_Format<br/>
<input type="Module_Format" name="Module_Format" id="Module_Format" value="<?=$COURS["MODULE_FORMAT"] ?>" /><hr/>
Fil_etd<br/>
<input type="Fil_etd" name="Fil_etd" id="Fil_etd" value="<?=$COURS["FIL_ETD"] ?>" /><hr/>
<input type="submit" name="ajouter" id="ajouter" value="<?=$label ?>" /><br/>

</form>
<hr/>
<a href='liste.php'> << Retour</a>
