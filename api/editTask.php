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
$sql = "SELECT * FROM todos WHERE id = :id";
$stmt = $conn->prepare($sql);
$stmt->bindParam(':id', $id);
$stmt->execute();
$task = $stmt->fetch(PDO::FETCH_ASSOC);

// Check if user exists
if (!$task) {
    echo 'Task not found.';
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
        height: 500px;
        margin: 100px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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
        h1{
            color: black;
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
        <form action="updateTask.php" method="post">
            <input type="hidden" name="id" value="<?php echo $task['id']; ?>">
            <label for="name">Task:</label>
            <input class="form-input" type="text" id="name" name="task" value="<?php echo $task['task']; ?>"><br>
            <label for="email">Time Posted:</label>
            <input class="form-input" type="text" id="email" name="time_posted" value="<?php echo $task['time_posted']; ?>"><br>
            <label for="mobile">Deadline:</label>
            <input class="form-input" type="date" id="mobile" name="deadline" value="<?php echo $task['deadline']; ?>"><br>
            <button class="submit-button" type="submit">Update</button>
        </form>
    </div>
</body>
</html>
