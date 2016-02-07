<?php 
	$text = "I am craze man. I have bomb! I will kill you!";
	echo strpos($text, "bomb")."<br/>";
	// If word is not in text return false - NOT WORK HERE!
	echo strpos($text, "money");
?>
<?php
	$msg = "Hello Beni! How are you?";
	echo $msg.' - ';
	echo str_replace("Beni", "Mother", $msg)

?>