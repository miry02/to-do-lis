<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// Assuming you have already connected to your database
$servername = "localhost";
$username = "root";
$password = "";
$database = "react-crud";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to retrieve users data
$sql = "SELECT id, name, email, mobile FROM users";
$result = $conn->query($sql);

$users = array();

if ($result->num_rows > 0) {
    // Fetch data from each row and add to $users array
    while($row = $result->fetch_assoc()) {
        $user = array(
            "id" => $row["id"],
            "name" => $row["name"],
            "email" => $row["email"],
            "mobile" => $row["mobile"]
        );
        array_push($users, $user);
    }
}

// Close database connection
$conn->close();

// Encode users data as JSON and output
echo json_encode($users);
?>
