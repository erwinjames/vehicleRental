<?php 
include "TextMagicAPI.php";
if(isset($_POST['submit'])){

$api = new TextMagicAPI(array(
    "username" => "programmer", 
    "password" => "Erwin24"
));

$text = $_POST['txt'];
$to = $_POST['number'];
$phones = array($to);

$results = $api->send($text, $phones, true);
}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form method="post">
	<input type="text" name="number">
	<textarea type="text" name="txt"></textarea>
	<button name="submit" type="submit">send</button>
</form>
</body>
</html>