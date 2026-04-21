<?php
include 'db.php'; 

if (isset($_POST['register'])) {
    $user = $_POST['username'];
    $pass = $_POST['password'];

    $sql = "INSERT INTO users (username, password) VALUES ('$user', '$pass')";
    
    if (mysqli_query($conn, $sql)) {
        echo "<script>alert('Registration successful! Please login.'); window.location.href='login.php';</script>";
    } else {
        echo "Registration failed: " . mysqli_error($conn);
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
</head>
<body>
    <h2>Register</h2>
    <form action="register.php" method="POST">
        Username: <input type="text" name="username" required><br><br>
        Password: <input type="password" name="password" required><br><br>
        <button type="submit" name="register">Submit Registration</button>
    </form>
    <br>
    <a href="login.php">Already have an account? Login here</a>
</body>
</html>