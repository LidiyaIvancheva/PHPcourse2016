<?php
	/*
	Ex.3. Write 4 maint PHP data types 
	and print them with function gettype();
	*/

	// 1.string
	$text = "dog";
	echo gettype($text)." - ";
	var_dump($text);
	echo "<br/>";

	// 2.intiger
	$age = 29;
	echo gettype($age)." - ";
	var_dump($age);
	echo "<br/>";

	// 3.float
	$num = 9.258;
	echo gettype($num)." - ";
	var_dump($num);
	echo "<br/>";

	// 4.boolean
	$first = true;
	echo gettype($first)." - ";
	var_dump($first);
	echo "<br/>";
	$second = false;
	echo gettype($second)." - ";
	var_dump($second);
	echo "<br/>";

	// 5.arrar
	$car = array("BMW", "Nissan", "Reno");
	echo gettype($car)." - ";
	var_dump($car);
	echo "<br/>";

	// 6.NULL
	$point = NULL;
	echo gettype($point)." - ";
	var_dump($point);
	echo "<br/>";

	// 7. Object

	// 8. Resourse

	//DO NOT PUT closing tag if in php file have only php code