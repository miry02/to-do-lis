import React, { useState, useEffect } from "react";
import { Link } from 'react-router-dom';

export const TodoForm = ({addTodo}) => {
  // Retrieve the task value from local storage or set it to an empty string if it's not available
  const [value, setValue] = useState(localStorage.getItem("task") || "");

  function handleChange(e) {
    setValue(e.target.value);
  }

  function handleSubmit(e) {
    e.preventDefault();
    // Save the task value to local storage
    localStorage.setItem("task", value);

    addTodo(value);
    // Construct the URL with the task value as a query parameter
    const url = `http://localhost:8080/to-do-lis-main/api/addTodo.php?task=${encodeURIComponent(value)}`;
    // Redirect to the constructed URL
    window.location.href = url;

    localStorage.removeItem("task");
    // Clear the input field
    setValue("");
  }

  // Clear the task value from local storage when the component is unmounted
  useEffect(() => {
    return () => {
      localStorage.removeItem("task");
    };
  }, []);

  return (
    <form className="TodoForm" onSubmit={handleSubmit}>
      <input
        type="text"
        className="Todo-input"
        value={value}
        placeholder="Enter task"
        onChange={handleChange}
      />
      <button type="submit" className="Todo-btn">
        Add task
      </button>
    </form>
  );
};
