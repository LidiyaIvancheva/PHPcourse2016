<!DOCTYPE html>
<html>
	<head>
		<?php
		 	header('Content-Type: text/html; charset=utf-8');
		?>

		<style type="text/css">
			#blue {
				color: blue;
			}
			#red {
				color: red;
			}
		</style>

	</head>
	<body>
		<?php

			/*
			Ex. 7. Print:
			In blue - I've gone to the store. 
			In red - “The harder’s the life, the sweeter’s the song.”  
			*/
			
			$blueMsg = "<p id='blue'>I've gone to the store.</p>";
			echo $blueMsg;

			$redMsg = '<p id="red">"The '."harder's the life, the ". "sweeter's the ". 'song."</p>';
			echo $redMsg;
		?>
	</body>
</html>
