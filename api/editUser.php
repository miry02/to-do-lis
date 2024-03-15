<?php
// Include database connection
include 'DbConnect.php';

// Check if ID is provided in the query string
if (!isset($_GET['id'])) {
    echo 'ID not provided.';
    exit();
}

// Retrieve user ID from the query string
$id = $_GET['id'];

// Connect to the database
$objDb = new DbConnect;
$conn = $objDb->connect();

// Fetch user details from the database
$sql = "SELECT * FROM users WHERE id = :id";
$stmt = $conn->prepare($sql);
$stmt->bindParam(':id', $id);
$stmt->execute();
$user = $stmt->fetch(PDO::FETCH_ASSOC);

// Check if user exists
if (!$user) {
    echo 'User not found.';
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User</title>
    <link rel="stylesheet" href="../src/App.css">
    <style>

        body{
            display: flex;
            align-items: center;
            justify-content: center;
        }
                /* Form container */
        .form-container {
        max-width: 400px;
        width: 50%;
        height: 550px;
        margin: 100px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
         h1{
            color: black;
         }
        /* Form title */
        .form-title {
        text-align: center;
        margin-bottom: 20px;
        }

        /* Form input fields */
        .form-input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        }

        /* Submit button */
        .submit-button {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-top: 70px;
        }

        .submit-button:hover {
        background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1 class="form-title">Edit User</h1>
        <form action="updateUser.php" method="post">
            <input type="hidden" name="id" value="<?php echo $user['id']; ?>">
            <label for="name">Name:</label>
            <input class="form-input" type="text" id="name" name="name" value="<?php echo $user['name']; ?>"><br>
            <label for="email">Email:</label>
            <input class="form-input" type="email" id="email" name="email" value="<?php echo $user['email']; ?>"><br>
            <label for="email">Password:</label>
            <input class="form-input" type="password" id="email" name="password" value="<?php echo $user['password']; ?>"><br>
            <label for="mobile">Mobile:</label>
            <input class="form-input" type="tel" id="mobile" name="mobile" value="<?php echo $user['mobile']; ?>"><br>
            <button class="submit-button" type="submit">Update</button>
        </form>
    </div>
</body>
</html>
