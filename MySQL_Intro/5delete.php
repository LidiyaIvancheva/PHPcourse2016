<?php
	/*
		5. Изтрийте всички записи в таблица products, които са някакъв сок.
		Отпечатайте в браузъра като таблица само тези записи в таблицата products, 
		които не са изтрити, с информация за име на продукт, калории и гликемичен индекс
	*/

	$conn = mysqli_connect('localhost', 'root', '', 'foods');
	if (!$conn) {
		die("Database connection failed: " . mysqli_connect_error());
	} else {
		echo "INFO FROM DB FOODS!";
	}

	$q = "UPDATE `products` SET `date_deleted`= '2013-03-11' WHERE `product` LIKE '%сок%'";
	$result = mysqli_query($conn, $q);

	$q = "SELECT `product`, `calories`, `gi` FROM `products` WHERE `date_deleted` IS NULL";
	$result = mysqli_query($conn, $q);
	echo "<table border = '1'>";
			echo "<tr>
					<td>Products</td>
					<td>Calories</td>
					<td>GI</td>
				</tr>";
	if(mysqli_num_rows($result)>0){
		while($row = mysqli_fetch_assoc($result)){  
			echo "<tr><td>".$row['product']."</td><td>".$row['calories']."</td><td>". $row['gi']."</td>"."</tr>";
		}
	}
	echo "</tr></table>";
?>