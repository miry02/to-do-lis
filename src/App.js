// App.js

import React, { useState, useEffect } from 'react';
import './App.css';
import { Routes, Route, Link, useParams } from 'react-router-dom';
import CreateUser from './components/createUser';
import EditUser from './components/EditUser';
import ListUser from './components/ListUser';
import Tasklist from './components/Tasklist';
import { TodoWrapper } from './components/TodoWrapper';
import Login from './components/Login';
import ExpiryTask from './components/expiryTask'

function App() {
  const [username, setUsername] = useState('');

  useEffect(() => {
    // Get the username from the URL parameters
    const params = new URLSearchParams(window.location.search);
    const usernameParam = params.get('username');
    if (usernameParam) {
      setUsername(usernameParam);
    }
  }, []);

  return (
    <div className="App">
      <div className="top">
        <Link to="/login" className='login-link'>Login</Link>
        <div className="username">
          {/* Conditionally render the username */}
          {username ? `Welcome ${username}` : 'Guest'}
          {/* Add user-profile icon here */}
        </div>
      </div>
      <h1>React App</h1>
      <nav>
        <ul>
          <li>
            <Link to="/">List Users</Link>
          </li> 
          <li>
            <Link to="user/create">Create User</Link>
          </li>
          <li>
            <Link to="/todos">Todo List</Link>
          </li>
          <li>
            <Link to="/tasks">Task List</Link>
          </li>
          <li>
            <Link to="/expiry">Expired Tasks</Link> {/* Add the link for expired tasks */}
          </li>
        </ul>
      </nav>
      <Routes>
        <Route index element={<ListUser />} />
        <Route path="user/create" element={<CreateUser />} />
        <Route path="user/:id/edit" element={<EditUser />} />
        <Route path="/todos" element={<TodoWrapper />} />
        <Route path="/login" element={<Login />} />
        <Route path="/tasks" element={<Tasklist />} />
        {/* Add Route for the expiryTasks component */}
        <Route path="/expiry" element={<ExpiryTask />} />
      </Routes>
    </div>
  );
}

export default App;
