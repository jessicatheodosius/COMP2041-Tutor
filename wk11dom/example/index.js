// IIFE
(function() {
  function helloWorld() {
    alert('Hello world!');
  }

  document.addEventListener('DOMContentLoaded', (event) => {
    const button = document.getElementById('myButton');
    button.addEventListener('click', helloWorld);

    // document.getElementById('myButton').addEventListener('click', () => {
    //   alert('Hello world!');
    // })
  });
})();
