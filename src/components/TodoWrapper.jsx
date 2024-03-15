import React, { useState, useEffect } from "react";
import { v4 as uuidv4 } from "uuid";
import { EditTodoForm } from "./EditTodoForms";
import { Todo } from "./Todo";
import { TodoForm } from "./TodoForm";
//initialize uuid
uuidv4();

export const TodoWrapper = () => {
  // Initialize state with the tasks retrieved from local storage, or an empty array if none are found
  const [todos, setTodos] = useState(JSON.parse(localStorage.getItem("todos")) || []);

  // Update local storage whenever the todos state changes
  useEffect(() => {
    localStorage.setItem("todos", JSON.stringify(todos));
  }, [todos]);

  function addTodo(todo) {
    setTodos([
      ...todos,
      { id: uuidv4(), task: todo, completed: false, isEditing: false },
    ]);
  }

  const toggleComplete = (id) => {
    setTodos(
      todos.map((todo) =>
        todo.id === id
          ? {
              ...todo,
              completed: !todo.completed,
            }
          : todo
      )
    );
  };

  const deleteTodo = (id) => {
    setTodos(todos.filter((todo) => todo.id !== id));
  };

  const editTodo = (id) => {
    setTodos(
      todos.map((todo) =>
        todo.id === id
          ? {
              ...todo,
              isEditing: !todo.isEditing,
            }
          : todo
      )
    );
  };

  const editTask = (task, id) => {
    setTodos(
      todos.map((todo) =>
        todo.id === id
          ? {
              ...todo,
              task,
              isEditing: !todo.isEditing,
            }
          : todo
      )
    );
  };

  return (
    <div className="TodoWrapper">
      <h1>Be sure to get it done!</h1>
      {/* create a property called addTodo and assign it a function called addTodo*/}
      <TodoForm addTodo={addTodo} />

      {/*generate a todo for each value of the state*/}
      {todos.map((todo) =>
        todo.isEditing ? (
          <EditTodoForm editTodo={editTask} task={todo} />
        ) : (
          <Todo
            task={todo}
            key={todo.id}
            toggleComplete={toggleComplete}
            deleteTodo={deleteTodo}
            editTodo={editTodo}
          />
        )
      )}
    </div>
  );
};
