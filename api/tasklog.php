<?php
// Start session
session_start();

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

// Include database connection
include 'DbConnect.php';

// Connect to the database
$objDb = new DbConnect;
$conn = $objDb->connect();

// Prepare SQL statement to fetch expired tasks
$sql = "SELECT * FROM todos WHERE deadline < NOW()";
$stmt = $conn->prepare($sql);
$stmt->execute();
$expiredTasks = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Output the expired tasks as JSON
echo json_encode($expiredTasks);
?>
