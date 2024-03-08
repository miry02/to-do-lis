import React, { useState, useEffect } from 'react';
import axios from 'axios';
import TaskForm from './TaskForm';
import "./TaskManagement.css";
const TaskManagement = () => {
  const [tasks, setTasks] = useState([]);
  const [showForm, setShowForm] = useState(false);

  useEffect(() => {
    getTasks();
  }, []);

  const getTasks = () => {
    axios.get('http://localhost:3001/tasks')
      .then(res => {
        setTasks(res.data);
      })
      .catch(err => {
        console.log(err);
      });
  }

  const handleCreate = (task) => {
    axios.post('http://localhost:3001/tasks', task)
      .then(res => {
        setTasks([...tasks, res.data]);
      })
      .catch(err => {
        console.log(err);
      });
  }

  const handleEdit = (task) => {
    axios.put(`http://localhost:3001/tasks/${task.id}`, task)
      .then(res => {
        const updatedTasks = tasks.map(t => (t.id === task.id ? res.data : t));
        setTasks(updatedTasks);
      })
      .catch(err => {
        console.log(err);
      });
  }

  const handleDelete = (id) => {
    axios.delete(`http://localhost:3001/tasks/${id}`)
      .then(res => {
        const updatedTasks = tasks.filter(t => t.id !== id);
        setTasks(updatedTasks);
      })
      .catch(err => {
        console.log(err);
      });
  }

  const toggleForm = () => {
    setShowForm(!showForm);
  }

  return (
    <div>
      <h1>Task Management</h1>
      <button onClick={toggleForm}>{showForm ? 'Cancel' : 'Add Task'}</button>
      {showForm && <TaskForm handleCreate={handleCreate} />}
      <ul>
        {tasks.map(task => (
          <li key={task.id}>
            <h3>{task.title}</h3>
            <p>{task.description}</p>
            <button onClick={() => handleEdit(task)}>Edit</button>
            <button onClick={() => handleDelete(task.id)}>Delete</button>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default TaskManagement;