<!DOCTYPE html>
<html>
		<head>
			<?php
		 		header('Content-Type: text/html; charset=utf-8');
			?>

			<title>Perimeters</title>
		</head>
		<body>
			<?php
			/*11. Задачи с изчисления  
			Опишете с PHP програма за изчисляване на периметъра и лицето на различни геометрични форми
			Rзпробвайте с три различни стойности на променливите.  
			Помислете колко и какви променливи ще е необходимо да декларирате. 
			Правоъгълник  Триъгълник  
			ДОМАШНО 2 зад.  Кръг 
			ДОМАШНО 3 зад.  Трапец 
			*/

			// P/S of rectangle

			$a = 5;
			$b = 4;
			$p = $a + $b;
			$s = $a*$b;
			$result = "Rectangle with a=$a and b=$b has P=$p and S=$s. <br/>";
			
			echo $result;

			$a = 3;
			$b = 5;
			$p = $a + $b;
			$s = $a*$b;
			echo "Rectangle with a=$a and b=$b has P=$p and S=$s. <br/>";


			?>
		</body>
</html>
