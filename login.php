<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "tubesweb";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        session_start();
        $_SESSION['username'] = $username;

        header("Location: homeadmin.html");
        exit();
    } else {
        echo "Login gagal. Cek kembali username dan password.";
    }
}

$conn->close();
?>
