<?php
class DAO {
  
     protected $db;
     private $host="localhost:1521"; 
     private $dbname="orcl";
     private $user="root";
     private $password="root";

    public function __construct() {

    
        try {
           $conn = $this->db = oci_connect($this->user,$this->password, $this->host.'/'.$this->dbname);
            if (!$conn) {
		        echo "Connection error";
                throw new Exception("Connection error");
            } 
             else{echo "Connection a Oracle reussie !";} 
        } catch (Exception $e) {
            echo $e->getMessage() . "<br>Error :  ";
            echo "<b>" . $e->getLine() . "</b>";
           oci_close($this->db );
        }
    }
    
    public function getting(){
         oci_close($this->db );
        
    }

}
//new DAO(); 

?>



