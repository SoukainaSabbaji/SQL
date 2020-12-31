<?php
require_once 'DAO.Class.php';
class CrudDAO extends DAO {

    public function __construct() {

        parent::__construct(); 
    }
    
    /**creer table**/
      public function createTable($query) {
        try {          
             $stmt = $query;
             $s = oci_parse($this->db, $stmt);
             $r = oci_execute($s);  // automatically commit
             parent::getting();
             echo "sucecss"; 
        } catch (Exception $e) {
            echo $e->getMessage() . "<br>Error :  "; 
            echo "<b>" . $e->getTraceAsString() . "</b>"; 
            parent::getting();
        }

 
    }
    
       
    public function insert($table, Array $donnees) 
    {
  

        foreach ($donnees as $inds => $vals) {
            $champs[] = $inds;
            $valeurs[] = $vals;
        }
        $champs = implode(",", $champs);
        $sequence = $valeurs[0]; 
	unset($valeurs[0]);
        $valeurs = "'" . implode("','", $valeurs) . "'";
	$valeurs = $sequence.", ".$valeurs;

        try {
            $stmt ="insert into {$table}({$champs}) values({$valeurs})";          
            $s = oci_parse($this->db, $stmt);
            $r = oci_execute($s);  // automatically commit
        } catch (Exception $e) {
            echo $e->getMessage() . "<br>Error :  ";
            echo "<b>" . $e->getTraceAsString() . "</b>";
             parent::getting();
        }
    }

    public function read($table, $champs=null, $critere=null) {
        
        ($champs == null) ? $champs = "*" : $champs = $champs;
        ($critere == null) ? $critere = "" : $critere = $critere;
        try{
	
	 $stid = oci_parse($this->db, "select {$champs} from {$table} {$critere}");
	 $r = oci_execute($stid);
        return $stid;
        }
 catch (Exception $e){
      echo $e->getMessage() . "<br>Error :  "; 
            echo "<b>" . $e->getTraceAsString()."</b>"; 
              parent::getting();
 }
    }
//total des lignes du table
public function returnCount($table){

   try {
     $query = "select count(*) c from ".$table;
     $stid = oci_parse($this->db, $query);
     oci_execute($stid);
     oci_fetch_all($stid, $res);
       echo "Number of rows: ", $res['C'][0], "<br>";
    } catch (Exception $e) {
       echo $e->getMessage() . "<br>Error :  ";
       echo "<b>" . $e->getTraceAsString() . "</b>";
             
        }



}
public function update($table, Array $donnees, $critere) {

    foreach ($donnees as $inds => $vals) {
        (is_int($vals)) ? $vals = $vals : $vals = "'{$vals}'";
        $champs[] = "{$inds} ={$vals}";
    }
    $champs = implode(", ", $champs);
    try {
        $stmt ="update {$table} set {$champs} where {$critere}";          
        $s = oci_parse($this->db, $stmt);
        $r = oci_execute($s);  // automatically commit

    } catch (Exception $e) {
        echo $e->getMessage() . "<br>Error :  "; 
        echo "<b>" . $e->getTraceAsString() . "</b>"; 
        parent::getting();
    }
}

public function updateFree($table, Array $donnees, $critere) 
{

    foreach ($donnees as $inds => $vals) {
        (is_int($vals)) ? $vals = $vals : $vals = "'{$vals}'";
        $champs[] = "{$inds} ={$vals}";
    }
    //$champs = implode(", ", $champs);
    try {
        $stmt ="update {$table} set {$champs} where {$critere}";          
        $s = oci_parse($this->db, $stmt);
        $r = oci_execute($s);  
    
    } catch (Exception $e) {
        echo $e->getMessage() . "<br>Error :  "; 
        echo "<b>" . $e->getTraceAsString() . "</b>";  
        
    }
}




    public function delete($table, $critere) 
    {
        try {          
             $stmt = "delete from {$table}  where {$critere}";
             $s = oci_parse($this->db, $stmt);
             $r = oci_execute($s);  // automatically commit
             parent::getting();
        } catch (Exception $e) 
        {
            echo $e->getMessage() . "<br>Error:  "; 
            echo "<b>" . $e->getTraceAsString() . "</b>"; 
            parent::getting();
        }

 
    }
         
    public function deleteFree($table, $critere) {
       try {          
             $stmt = "delete from {$table}  where {$critere}";
             $s = oci_parse($this->db, $stmt);
             $r = oci_execute($s);  // automatically commit
             
        } catch (Exception $e) {
            echo $e->getMessage() . "<br>Error:  "; 
            echo "<b>" . $e->getTraceAsString() . "</b>"; 
            
        }
    }   

}

