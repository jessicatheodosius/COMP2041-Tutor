import { getTodos } from './api.js';
import { createTodoList } from './helpers.js';

const todosElement = document.getElementById('todos');
const todoJSON = getTodos();

todoJSON
  .then(todos => {
    // this is slow
    todosElement.innerHTML = '';
    todosElement.appendChild(createTodoList(todos))
  });
