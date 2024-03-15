<?php
// Include database connection
include 'DbConnect.php';

// Check if ID is provided in the query string
if (!isset($_GET['id'])) {
    echo json_encode(['success' => false, 'message' => 'ID not provided.']);
    exit();
}

// Retrieve user ID from the query string
$id = $_GET['id'];

// Connect to the database
$objDb = new DbConnect;
$conn = $objDb->connect();

// Delete user from the database
$sql = "DELETE FROM users WHERE id = :id";
$stmt = $conn->prepare($sql);
$stmt->bindParam(':id', $id);

if ($stmt->execute()) {
    // Return success response
    echo json_encode(['success' => true]);
} else {
    // Return error response
    echo json_encode(['success' => false, 'message' => 'Error deleting user.']);
}
?>
