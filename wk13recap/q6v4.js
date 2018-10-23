const URL_1 = 'https://jsonplaceholder.typicode.com/todos/1';
const URL_2 = 'https://jsonplaceholder.typicode.com/todos/2';

Promise.race([fetch(URL_1), fetch(URL_2)])
  .then(response => response.json())
  .then(jsons => console.log(jsons));
