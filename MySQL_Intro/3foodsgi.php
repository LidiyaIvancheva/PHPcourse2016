<?php
	/*
		3. Отпечатайте в браузъра всички записи в таблица products, 
		които отговарят на условието gi>10 и date_deleted IS null 
		в таблица с информация за име на продукт и гликемичен идекс /gi/;
	*/

	$conn = mysqli_connect('localhost', 'root', '', 'foods');
	if (!$conn) {
		die("Database connection failed: " . mysqli_connect_error());
	} else {
		echo "INFO FROM DB FOODS!";
	}

	$q = "SELECT `product`,`gi` FROM `products` WHERE `gi`>10 AND `date_deleted` IS NULL";
	$result = mysqli_query($conn, $q);
	echo "<table border = '1'>";
			echo "<tr>
					<td>Products</td>
					<td>Calories</td>
				</tr>";
	if(mysqli_num_rows($result)>0){
		while($row = mysqli_fetch_assoc($result)){  
			echo "<tr><td>".$row['product']."</td><td>". $row['gi']."</td>"."</tr>";
		}
	}
	echo "</tr></table>";

?>