<?php
	/*
	4. Променете всички записи в таблица products, 
	които отговарят на условието gi = 0 или калориите <100, 
	като удвоите калориите им.
	Отпечатайте записите в браузъра в таблица 
	с информация за име на продукт, калории и гликемичен индекс – 
	преди и след направената промяна.
	*/

	$conn = mysqli_connect('localhost', 'root', '', 'foods');
	if (!$conn) {
		die("Database connection failed: " . mysqli_connect_error());
	} else {
		echo "INFO FROM DB FOODS!";
	}

	$query = "UPDATE `products` SET `calories` = `calories`*2 WHERE `calories`< 100 AND `gi`=0";
	$res = mysqli_query($conn, $query);

	$q = "SELECT `product`, `calories`, `gi`FROM `products` WHERE `gi`= 0 AND `calories` < 100";
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