<?php
// Include database connection
include 'DbConnect.php';

// Check if ID and other details are provided in the request
if (!isset($_POST['id']) || !isset($_POST['name']) || !isset($_POST['password']) ||  !isset($_POST['email']) || !isset($_POST['mobile'])) {
    echo 'ID or details not provided.';
    exit();
}

// Retrieve details from the request
$id = $_POST['id'];
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];
$mobile = $_POST['mobile'];

// Connect to the database
$objDb = new DbConnect;
$conn = $objDb->connect();

// Update user details in the database
$sql = "UPDATE users SET name = :name, email = :email, password = :password, mobile = :mobile WHERE id = :id";
$stmt = $conn->prepare($sql);
$stmt->bindParam(':id', $id);
$stmt->bindParam(':name', $name);
$stmt->bindParam(':email', $email);
$stmt->bindParam(':password', $password);
$stmt->bindParam(':mobile', $mobile);
$stmt->execute();

// Redirect back to the specified URL
header('Location: http://localhost:3000/build/user/create');
exit();
?>
