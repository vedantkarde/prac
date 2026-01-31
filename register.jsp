<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <style>
        body { font-family: Arial; background: #f4f4f4; }
        form { width: 500px; margin: auto; background: white; padding: 20px; }
        label { display: block; margin-top: 10px; }
    </style>
</head>
<body>

<form action="RegisterServlet" method="post" enctype="multipart/form-data">
    <h2>Organization Registration</h2>

    <label>Full Name:</label>
    <input type="text" name="name" required>

    <label>Email:</label>
    <input type="email" name="email" required>

    <label>Password:</label>
    <input type="password" name="password" required>

    <label>Gender:</label>
    <input type="radio" name="gender" value="Male"> Male
    <input type="radio" name="gender" value="Female"> Female

    <label>Department:</label>
    <select name="department">
        <option>HR</option>
        <option>IT</option>
        <option>Finance</option>
        <option>Marketing</option>
    </select>

    <label>Skills:</label>
    <input type="checkbox" name="skills" value="Java"> Java
    <input type="checkbox" name="skills" value="Python"> Python
    <input type="checkbox" name="skills" value="SQL"> SQL

    <label>Date of Birth:</label>
    <input type="date" name="dob">

    <label>Profile Picture:</label>
    <input type="file" name="photo">

    <br><br>
    <input type="submit" value="Register">
</form>

</body>
</html>
