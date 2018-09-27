<?php
function db_conn(){
    try{
return new PDO('mysql:dbname=gs_f01_db21;charset=utf8;host=localhost=3307','root','');
    } catch (PDOException $e) {
      exit('DbConnectEroor:'.$e->getMessage());
    }
}

$table = 'gs_bm_table1';

function errorMsg($stmt){
  $error = $stmt->errorInfo();
  exit('ErrorQuery:'.$error[2]);
}

function h($str){
  return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
}

?>