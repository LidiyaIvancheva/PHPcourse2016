<?php
	/*
		1. Свържете php файла си с БД – foods
	*/

	$conn = mysqli_connect('localhost', 'root', '', 'foods');
	if (!$conn) {
		die("Database connection failed: " . mysqli_connect_error());
	} else {
		echo "Connected successfully !";
	}

	$q = "SELECT * FROM products";
	$result = mysqli_query($conn, $q);
	echo "<table border = '1'>";
	if(mysqli_num_rows($result)>0){
		while($row = mysqli_fetch_assoc($result)){  
			echo "<tr><td>".$row['id']."</td>"."<td>". $row['product']."</td><td>". $row['calories']."</td><td>". $row['gi']."</td>"."</tr>";
		}
	}
	echo "</tr></table>";

?>