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

include('functions.php');
$pdo = db_conn();

$stmt = $pdo->prepare('UPDATE '. $table .' SET entry=:a1, number=:a2, pattern=:a3, amount=:a4, volume=:a5, total=:a6, memo=:a7 WHERE id=:id');
$stmt->bindValue(':a1', $entry, PDO::PARAM_STR); 
$stmt->bindValue(':a2', $number, PDO::PARAM_INT);
$stmt->bindValue(':a3', $pattern, PDO::PARAM_STR); 
$stmt->bindValue(':a4', $amount, PDO::PARAM_INT);  
$stmt->bindValue(':a5', $volume, PDO::PARAM_INT); 
$stmt->bindValue(':a6', $total, PDO::PARAM_INT); 
$stmt->bindValue(':a7', $memo, PDO::PARAM_STR); 
$status = $stmt->execute();


if($status==false){
  errorMsg($stmt);
}else{
  header('Location: select.php');
  exit;
}
?>
