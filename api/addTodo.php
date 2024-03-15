<?php
// Include database connection
include 'DbConnect.php';

try {
    // Connect to the database
    $objDb = new DbConnect;
    $conn = $objDb->connect();
    
    // Check if the todos table exists
    $sql_check_table = "SHOW TABLES LIKE 'todos'";
    $stmt_check_table = $conn->prepare($sql_check_table);
    $stmt_check_table->execute();
    $table_exists = $stmt_check_table->fetchColumn();

    // If todos table doesn't exist, create it
    if (!$table_exists) {
        // Prepare SQL statement to create the todos table
        $sql_create_table = "CREATE TABLE todos (
            id INT AUTO_INCREMENT PRIMARY KEY,
            task VARCHAR(255) NOT NULL,
            time_posted TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            deadline TIMESTAMP DEFAULT (CURRENT_TIMESTAMP + INTERVAL 4 HOUR)
        )";

        // Execute the statement to create the todos table
        $conn->exec($sql_create_table);

        echo "Todos table created successfully.";
    } else {
        echo "Todos table already exists.";
    }
    try {
    
        // Retrieve the task value from the URL query parameters
        $task = $_GET['task'];
    
        // Prepare SQL statement to insert the task into the todos table
        $sql_insert_task = "INSERT INTO todos (task) VALUES (:task)";
        $stmt_insert_task = $conn->prepare($sql_insert_task);
        $stmt_insert_task->bindParam(':task', $task);
        
        // Execute the statement to insert the task into the todos table
        $stmt_insert_task->execute();
    
        // Output success message
        echo "Task added successfully.";
        header("Location: http://localhost:3000/build/todos");
        exit(); // Ensure that no further code is executed after the redirection
    } catch (PDOException $e) {
        // Return error message
        echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
    }
} catch (PDOException $e) {
    // Return error message
    echo json_encode(['status' => 'error', 'message' => $e->getMessage()]);
}
?>
