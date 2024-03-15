<?php
// Include database connection
include 'DbConnect.php';

// Check if ID and other details are provided in the request
if (!isset($_POST['id']) || !isset($_POST['task']) || !isset($_POST['time_posted']) || !isset($_POST['deadline'])) {
    echo 'ID or details not provided.';
    exit();
}

// Retrieve details from the request
$id = $_POST['id'];
$task = $_POST['task'];
$timePosted = $_POST['time_posted'];
$deadline = $_POST['deadline'];

// Connect to the database
$objDb = new DbConnect;
$conn = $objDb->connect();

// Update user details in the database
$sql = "UPDATE todos SET task = :task, time_posted = :time_posted, deadline = :deadline WHERE id = :id";
$stmt = $conn->prepare($sql);
$stmt->bindParam(':id', $id);
$stmt->bindParam(':task', $task);
$stmt->bindParam(':time_posted', $timePosted);
$stmt->bindParam(':deadline', $deadline);
$stmt->execute();

// Redirect back to the specified URL
header('Location: http://localhost:3000/build/tasks');
exit();
?>
