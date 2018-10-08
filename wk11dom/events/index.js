(function() {
  function init() {
    const result = document.getElementById('result');
    window.addEventListener('click', (event) => {
      result.innerHTML =
        `Element clicked: ${event.target.tagName}<br>
         x: ${event.x}, y: ${event.y}`
    });

    // look at sources
    // set breakpoints
  }

  document.addEventListener('DOMContentLoaded', init);
})();
