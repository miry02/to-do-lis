import React, { useState } from "react";

//you need to import the addTodo function from todoWrapper
export const TodoForm = ({ addTodo }) => {
  //track the user input
  const [value, setValue] = useState("");

  function handleChange(e) {
    setValue(e.target.value);
  }
  //to save he input to the state use setValue like above

  function handleSubmit(e) {
    //to prevent the page from reloading
    e.preventDefault();

    //pass value to the addTodo fxn
    addTodo(value);

    //to make the input textbox after task is submitted
    setValue("");
  }

  return (
    <form className="TodoForm" onSubmit={handleSubmit}>
      <input
        type="text"
        className="Todo-input"
        value={value}
        placeholder="what next :)"
        onChange={handleChange}
      />
      <button type="submit" className="Todo-btn">
        Add task
      </button>
    </form>
  );
};
