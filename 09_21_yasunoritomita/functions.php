<?php
function db_conn(){
  $dbname='gs_f01_db21';
    try{
return new PDO('mysql:dbname='.$dbname.';charset=utf8;host=localhost=3307','root','');
    } catch (PDOException $e) {
      exit('DbConnectEroor:'.$e->getMessage());
    }
}

$table = 'gs_bm_table1';
$user_table = 'gs_user_table'; 

function errorMsg($stmt){
  $error = $stmt->errorInfo();
  exit('ErrorQuery:'.$error[2]);
}

function h($str){
  return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
}

function chk_ssid(){
  if(!isset($_SESSION['chk_ssid']) || $_SESSION['chk_ssid']!=session_id()){
    exit('Login Error.');
  }else{
    session_regenerate_id(true);
    $_SESSION['chk_ssid'] = session_id();
  }
}
?>
