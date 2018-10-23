const URL_1 = 'https://jsonplaceholder.typicode.com/todos/1';
const URL_2 = 'https://jsonplaceholder.typicode.com/todos/2';

fetch(URL_1)
  .then(response => response.json())
  .then(json => { console.log(json); return fetch(URL_2); })
  .then(response => response.json())
  .then(json => console.log(json));
