<?php
// Establish database connection (Replace with your database credentials)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "react-crud";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to create users table if it doesn't exist
$sql_create_table = "CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password INT(10) NOT NULL,
    mobile VARCHAR(20) NOT NULL
)";

if ($conn->query($sql_create_table) === TRUE) {
    echo "Users table created successfully or already exists.";
} else {
    echo "Error creating table: " . $conn->error;
}

// Process form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $name = $_POST["name"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $mobile = $_POST["mobile"];

    // Insert data into database
    $sql_insert = "INSERT INTO users (name, email, password, mobile) VALUES ('$name', '$email', '$password', '$mobile')";

    if ($conn->query($sql_insert) === TRUE) {
        echo "New record created successfully";
        header("Location: http://localhost:3000/build/user/create");
    } else {
        echo "Error: " . $sql_insert . "<br>" . $conn->error;
    }
}

// Close database connection
$conn->close();
?>
