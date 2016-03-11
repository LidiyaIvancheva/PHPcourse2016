<?php
	/*
		2. Отпечатайте в браузъра първите 10 записа от таблица products в таблица с информация за име на продукт, калории.
	*/

	$conn = mysqli_connect('localhost', 'root', '', 'foods');
	if (!$conn) {
		die("Database connection failed: " . mysqli_connect_error());
	} else {
		echo "INFO FROM DB FOODS!";
	}

	$q = "SELECT `id`,`product`, `calories` FROM `products` LIMIT 10";
	$result = mysqli_query($conn, $q);
	echo "<table border = '1'>";
			echo "<tr>
					<td>№</td>
					<td>Products</td>
					<td>Calories</td>
				</tr>";
	if(mysqli_num_rows($result)>0){
		while($row = mysqli_fetch_assoc($result)){  
			echo "<tr><td>".$row['id']."</td><td>".$row['product']."</td><td>". $row['calories']."</td>"."</tr>";
		}
	}
	echo "</tr></table>";

?>