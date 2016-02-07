<!DOCTYPE html>
<html>
<body>

	<?php
		$d1=strtotime("February 11");
		$d2=ceil(($d1-time())/60/60/24);
		echo "There are " . $d2 ." days until 11th of February.";
	?>

</body>
</html>