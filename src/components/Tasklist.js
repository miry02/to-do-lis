import React, { useState, useEffect } from 'react';
export default function Tasklist() {

  const [tasks, setTasks] = useState([]);

  useEffect(() => {
    fetchTasks();
  }, []);

  const fetchTasks =  () => {
   fetch('http://localhost:8080/to-do-lis-main/api/fetchTask.php')

   .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json();
     })
     .then(data => {
      // Update state with the fetched users data
      setTasks(data);
     })
      .catch(error => {
      console.error('Error fetching tasks:', error);
    });
  };

  const handleEditTask = (taskId) => {
   // Redirect to editUser.php with the user's ID as a query parameter
   window.location.href = `http://localhost:8080/to-do-lis-main/api/editTask.php?id=${taskId}`;
 };
 const handleDeleteTask = (taskId) => {
   // Make a request to the PHP script to delete the user
   fetch(`http://localhost:8080/to-do-lis-main/api/deleteTask.php?id=${taskId}`)
   .then(response => {
     if (!response.ok) {
       throw new Error('Network response was not ok');
     }
     // Reload the page after successful deletion
     window.location.reload();
   })
   .catch(error => {
     console.error('Error deleting user:', error);
   });
 };

  return (
    <div>
      <h1>Task List</h1>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Task</th>
            <th>Time Posted</th>
            <th>Deadline</th>
            <th>Actions</th>
            {/* Add more columns here if needed */}
          </tr>
        </thead>
        <tbody>
          {tasks.map((task, index) => (
            <tr key={index}>
              <td>{task.id}</td>
              <td>{task.task}</td>
              <td>{task.time_posted}</td>
              <td>{task.deadline}</td>
              <td>
                {/* Add your action buttons here */}
                <button onClick={() => handleEditTask(task.id)}>Edit</button> &nbsp;
                <button onClick={() => handleDeleteTask(task.id)}>Delete</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

