<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>225取引記録</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">225取引記録</a></div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="insert.php">
  <div class="jumbotron">
   <fieldset>
    <legend>トレード内容</legend>

     <label for>区分： 
     <input type="radio" name="entry" value="新規" checked>新規　
     <input type="radio" name="entry" value="返済">返済</label><br><br>

     <label>関連No.：
     <input type="text" name=number></label><br><br>


     <label for>種別：
     <input type="radio" name="pattern" value="買" checked>買　
     <input type="radio" name="pattern" value="売">売</label><br><br>

     <label>金額：
     <input type="text" name="amount"></label><br><br>

     <label>枚数：
     <input type="text" name="volume"></label><br><br>

     <label>収支：
     <input type="text" name="total"></label><br><br>

     <label>
     <textArea name="memo" rows="4" cols="40">※日時・理由・決済・損失計画・メモ</textArea></label><br><br>

     <input type="submit" value="送信">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
