<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header('Content-Type: text/html ; charset=utf-8');
echo "<meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\" />";
require_once 'C:/wamp64/www/sql/CrudDAO.Class.php';

$query="create table COURS2("
    ."NUM_COURS NUMBER(10) CONSTRAINT NUM_COURS_nn NOT NULL, CONSTRAINT NUM_COURS_pk PRIMARY KEY(NUM_COURS),"
    ."Duree_Cours VARCHAR2(10),"
    ."Description_ CHAR(100),"
    ."DATE_DIFF_COURS DATE,"
    ."Semestre NUMBER(2),"
    ." Module_Format CHAR(20),"
    ." Fil_etd CHAR(6)";

$dao = new CrudDAO();

$dao->createTable($query);

//header("Location:liste.php");


