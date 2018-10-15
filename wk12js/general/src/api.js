const getJSON = (path, options) =>
  fetch(path, options)
    .then(res => res.json())
    .catch(err => console.warn(`API_ERROR: ${err.message}`));

const TODOS_URL = 'https://jsonplaceholder.typicode.com/todos';

export const getTodos = (option) => {
  if (option == 'promise') {

  }
  return getJSON(TODOS_URL);
}
