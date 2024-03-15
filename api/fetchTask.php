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

// Fetch tasks from the database
$sql = "SELECT id, task, time_posted, deadline FROM todos"; // Select only the task column
$result = $conn->query($sql);

$tasks = array();
if ($result->num_rows > 0) {
    // Fetch data from each row and add to $users array
    while($row = $result->fetch_assoc()) {
        $task = array(
            "id" => $row["id"],
            "task" => $row["task"],
            "time_posted" => $row["time_posted"],
            "deadline" => $row["deadline"]
        );
        array_push($tasks, $task);
    }
}

// Close database connection
$conn->close();

// Encode users data as JSON and output
echo json_encode($tasks);
?>
