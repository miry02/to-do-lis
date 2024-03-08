import './App.css';
import { TodoWrapper } from './components/TodoWrapper';
import TaskForm from './components/TaskManagement';
import TaskManagement from './components/TaskManagement';

function App() {
  return (
    <div className="App">
      <TodoWrapper/>
      <TaskManagement/>
    </div>
  );
}

export default App;
