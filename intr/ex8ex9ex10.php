<!DOCTYPE html>
<html>
	<head>
		<?php
		 	header('Content-Type: text/html; charset=utf-8');
		?>
		<title>Ex8ex9ex10</title>
		<style type="text/css">
			#name {
				color: purple;
			}
			.course {
				color: blue;
			}
			#user {
				color: pink;
			}
			#time {
				color: red;
			}
		</style>
	</head>
	<body>
		<h1>Courses</h1>
		<?php
		/*
			8. Send the letter to 100 users.  
			Hi, user! You`ve been approved to take part in the course_1 as a lecturer.
			The course_1 will last for two days. 
			The users are separated in three groups – student, lecturer, assistant.
			There are three types of courses. The courses have different time.
			Make some parts of text varriables and use in diffrent occasions.
			9. Print text for three groups of users. Use same text for all users. 
			10. * Print variables in colors. 
		*/

		$name = "Marya";
		$course = "PHP & OOP";
		$user = "stdent";
		$time = 2;
		$letter = "Hi, <span id='name'>$name</span>!<br/> 
				You've been approved to take part in "."<span class='course'>$course</span> 
				as a <span id='user'>$user</span>.<br/>
				The <span class='course'>$course</span> will last for <span id='time'>$time days</span>.<br/>";
		echo $letter;

		$name = "Peter";
		$course = "WordPress";
		$user = "lecturer";
		$time = 5;
		$letter = "Hi, <span id='name'>$name</span>!<br/> 
				You've been approved to take part in "."<span class='course'>$course</span> 
				as a <span id='user'>$user</span>.<br/>
				The <span class='course'>$course</span> will last for <span id='time'>$time days</span>.<br/>";
		echo $letter;

		$name = "Antoan";
		$course = "Java";
		$user = "assistant";
		$time = 10;
		$letter = "Hi, <span id='name'>$name</span>!<br/> 
				You've been approved to take part in "."<span class='course'>$course</span> 
				as a <span id='user'>$user</span>.<br/>
				The <span class='course'>$course</span> will last for <span id='time'>$time days</span>.<br/>";
		echo $letter;

		?>
	</body>
</html>