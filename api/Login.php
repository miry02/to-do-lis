<?php
// Start session
session_start();

// Include database connection
include 'DbConnect.php';

// Check if email and password are provided in the POST request
if(isset($_POST['email']) && isset($_POST['password'])) {
    // Retrieve email and password from the POST data
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Connect to the database
    $objDb = new DbConnect;
    $conn = $objDb->connect();

    // Prepare SQL statement to fetch user with the provided email and password
    $sql = "SELECT * FROM users WHERE email = :email AND password = :password";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':password', $password);
    $stmt->execute();
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    // Check if a user with the provided credentials exists
    if ($user) {
        // User authenticated successfully
        // Store user's name in session variable
        $_SESSION['username'] = $user['name'];
        // Redirect to App.js with the username in the URL parameters
        header('Location: http://localhost:3000/build?username=' . urlencode($user['name']));
        exit();
    } else {
        // Invalid credentials
        echo json_encode(array('success' => false, 'message' => 'Invalid username or password'));
    }
} else {
    // Email or password not provided
    echo json_encode(array('success' => false, 'message' => 'Email or password not provided'));
}
?>
