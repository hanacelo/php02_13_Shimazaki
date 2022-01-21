<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>データ登録</title>
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
        .jumbotron{
            display: flex;
        }
        .flex-box{
            display: flex;
            background-color: lightgray;
            width: 700px;
        }

        header{
            background-color: lightcyan;
            width: 1000px;
        }
        .submit{
            margin-bottom: 80px;
            margin-top: 50px;
        }
    </style>
</head>

<body>

    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">セットリストを確認する</a></div>
            </div>
        </nav>
    </header>

    <h1>ネタバレサイト・King & Prince</h1>
    <div class="gazou"><img src="images/kinpuri02.jpeg" width="600px" height="auto"></div>


    <!-- Main[Start] -->
    <div class="flex-box">
        <div>タイトル：</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div>アーティスト：</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div>メモ：</div>
    </div>
    <form method="post" action="insert.php">
        <div class="jumbotron">
            <div><!--タイトル--><input type="text" name="name"></div><br>
            <div><!--アーティスト--><input type="text" name="email"></div><br>
            <div><!--メモ--><textArea name="content" rows="4" cols="40"></textArea></div><br>    
        </div>
        <input type="submit" value="送信" class="submit">
    </form>
    <!-- Main[End] -->


</body>

</html>
