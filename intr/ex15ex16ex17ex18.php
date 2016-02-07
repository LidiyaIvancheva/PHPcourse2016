<?php

/*
	Ex. 15. Отпечатайте текущата дата и час в България. 
	Ex. 16. Отпечатайте текущата дата и час в Бразилия. 
	използвайте date()
*/

date_default_timezone_set('Europe/Sofia');
echo date(DATE_RFC2822);	
echo "<br/>";

//Ex. 17. Отпечатайте датата във формат  - 
//6/Feb/2016
echo date('j/D/Y').'<br/>';
//06/02/16
echo date('d/m/y').'<br/>';
//2016-02-06
echo date("Y-m-d").'<br/>';

//Ex. 18. Отпечатайте текущия час във формат:
//22:25
echo date('H:d')."<br/>";
//10:25 pm
echo date('H:d a')."<br/>";
//22:25:12
echo date('H:d:s')."<br/>"
	




?>