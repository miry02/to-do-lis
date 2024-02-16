import React, { useState } from "react";

//you need to import the addTodo function from todoWrapper
export const EditTodoForm = ({ editTodo, task }) => {
  //track the user input
  const [value, setValue] = useState(task.task);

  const handleChange = (e) => setValue(e.target.value);
  //to save he input to the state use setValue like above

  const handleSubmit = (e) => {
    //to prevent the page from reloading
    e.preventDefault();

    //pass value to the addTodo fxn
    editTodo(value, task.id);

    //to make the input textbox after task is submitted
    setValue("");
  };

  return (
    <form className="TodoForm" onSubmit={handleSubmit}>
      <input
        type="text"
        className="Todo-input"
        value={value}
        placeholder="Update task"
        onChange={handleChange}
      />
      <button type="submit" className="Todo-btn">
        Update task
      </button>
    </form>
  );
};
