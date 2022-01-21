<?php
require_once('funcs.php'); //require_onceで呼び出して使えるようにする

$pdo = db_conn();

//２．データ取得SQL作成
// -> classというらしい
$stmt = $pdo->prepare("SELECT * FROM gs_b_table"); //myadwinで取得用に書いたやつと一緒
$status = $stmt->execute();

//３．データ表示
$view="";
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC) ){  //$resultの中に取得した情報が1行1行入っていく
    $view .= '<p>';  //よくわからんけど追加の処理らしい・・
    $view .= h($result['name']) .'&nbsp;' .'&nbsp;' .'&nbsp;' .'&nbsp;'.'&nbsp;'.h($result['email']) .'&nbsp;' .'&nbsp;' .'&nbsp;' .'&nbsp;'.'&nbsp;' .h($result['content']);
    $view .= '</p>';
  }

}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>フリーアンケート表示</title>
<style>
div{padding: 10px;font-size:16px;}
.flex-box{
  display: flex;
  background-color: lightgray;
  width: 700px;
}

.navbar-header{
  background-color: lightcyan;
  width: 1000px;
}

</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="tour.php">データ登録</a>
      </div>
    </div>
  </nav>
</header>

<h1>King & Prince コンサート情報まとめ</h1>
<div class="gazou"><img src="images/kinpuri04.jpeg" width="600px" height="auto"></div>


<div class="flex-box">
  <div id="title">アーティスト</div>&nbsp;&nbsp;
  <div id="artist">ツアー名</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <div id="memo">概要</div>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
  <div class="music_log"><a class="music_data" href="tour_insert.php">データ登録</a></div>
</div>
<div>
    <div class="container jumbotron"><?= $view ?></div>
</div>
<!-- Main[End] -->

</body>
</html>
