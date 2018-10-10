<?php

if(
  !isset($_POST["entry"]) || $_POST["entry"]=="" ||
  !isset($_POST["number"]) || $_POST["number"]=="" ||
  !isset($_POST["pattern"]) || $_POST["pattern"]==""||
  !isset($_POST["amount"]) || $_POST["amount"]=="" ||
  !isset($_POST["volume"]) || $_POST["volume"]=="" ||
  !isset($_POST["total"]) || $_POST["total"]=="" ||
  !isset($_POST["memo"]) || $_POST["memo"]==""
){
  exit('ParamError');
}

$entry = $_POST["entry"];
$number = $_POST["number"];
$pattern = $_POST["pattern"];
$amount = $_POST["amount"];
$volume = $_POST["volume"];
$total = $_POST["total"];
$memo = $_POST["memo"];


try {
  $pdo = new PDO('mysql:dbname=gs_f01_db21;charset=utf8;host=localhost;port=3307','root','');
} catch (PDOException $e) {
  exit('dbError:'.$e->getMessage());
}

$sql ="INSERT INTO gs_bm_table1(id,entry,number,pattern,amount,volume,total,memo,indate)
VALUES(NULL,:a1,:a2,:a3,:a4,:a5,:a6,:a7,sysdate())";


$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $entry, PDO::PARAM_STR); 
$stmt->bindValue(':a2', $number, PDO::PARAM_INT);
$stmt->bindValue(':a3', $pattern, PDO::PARAM_STR); 
$stmt->bindValue(':a4', $amount, PDO::PARAM_INT);  
$stmt->bindValue(':a5', $volume, PDO::PARAM_INT); 
$stmt->bindValue(':a6', $total, PDO::PARAM_INT); 
$stmt->bindValue(':a7', $memo, PDO::PARAM_STR); 
$status = $stmt->execute();


if($status==false){
  $error = $stmt->errorInfo();
  exit("sqlError:".$error[2]);
}else{
  header("Location: index.php");

}
?>
