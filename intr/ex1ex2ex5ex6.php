<!DOCTYPE>
<html>
	<head>
		<?php
		 	header('Content-Type: text/html; charset=utf-8');
		?>
		<title>Ex1</title>
	</head>
	<body>
		<h1>Информация</h1>

		<?php
/*  Ex.1. Write your name and age in Bulgarian.
	Do not forget to put encoding :
	header('Content-Type: text/html; charset=utf-8');
	Ex.2. Write your address in Bulgarian.
*/

			$myName = "Петя";
			$myAge = 29;
			$myAddress = 'гр. Враца, ул. “Христо Ботев“ №1';

			echo "Име: $myName"."<br/>";
			echo "Възраст: $myAge"."<br/>";
			echo "Адрес: $myAddress"."<br/>";

/*  Ex.5. Write your name and hobby in Bulgarian.
	Ex.6. Write your friend`s name and hobby with the same code
	using variables in the text.
*/
			$name = 'Петя';
			$hobby = 'гледам филми';
			$text = "Здравейте! Аз съм $name. В свободното си време $hobby.";
			echo $text."<br/>";
			$name = "Мария";
			$hobby = "плувам";
			$text = "Здравейте! Аз съм $name. В свободното си време $hobby.";
			echo $text;

		?>
	</body>
</html>