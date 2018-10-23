const URL_1 = 'https://jsonplaceholder.typicode.com/todos/1';
const URL_2 = 'https://jsonplaceholder.typicode.com/todos/2';

Promise.all([fetch(URL_1), fetch(URL_2)])
  .then(responses => Promise.all(responses.map(res => res.json())))
  .then(jsons => console.log(jsons));
