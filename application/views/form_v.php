<!DOCTYPE html>
<html>
<head>
	<title>BAU</title>
</head>
<body>
	<form method="POST" action="http://localhost/ich/index.php/User/Add">
		username : 
		<input type="text" name="username"><br>
		fullname : 
		<input type="text" name="fullname"><br>
		password :
		<input type="password" name="password"><br>
		level :
		<select name="level">
		<option value="admin">Admin</option>
		<option value="user">User</option>
		</select>
		</br>
		<button type="submit">Register</button>
	</form>
</body>
</html>