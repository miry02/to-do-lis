// ExpiryTask.js

import React, { useEffect, useState } from 'react';

export default function ExpiryTask(){
  const [expiredTasks, setExpiredTasks] = useState([]);

  useEffect(() => {
    fetchExpiredTasks();
  }, []);

  const fetchExpiredTasks = () => {
    fetch('http://localhost:8080/to-do-lis-main/api/tasklog.php')
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json();
      })
      .then(tasks => {
        setExpiredTasks(tasks);
      })
      .catch(error => {
        console.error('Error fetching expired tasks:', error);
      });
  }

  return (
    <div>
      <h2>Expired Tasks</h2>
      <table>
        <thead>
          <tr>
            <th>Task ID</th>
            <th>Task</th>
            <th>Time Posted</th>
            <th>Deadline</th>
          </tr>
        </thead>
        <tbody>
          {expiredTasks.map(task => (
            <tr key={task.id}>
              <td>{task.id}</td>
              <td>{task.task}</td>
              <td>{task.time_posted}</td>
              <td>{task.deadline}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

