(function() {
  // this should be somewhere else, but it's hard to load with plain js
  const cats = [
    {
      "name": "Mexican",
      "url": "mexinyan.gif"
    },
    {
      "name": "Original",
      "url": "original.gif"
    },
    {
      "name": "Pikachu",
      "url": "pikanyan.gif"
    },
    {
      "name": "Pirate",
      "url": "Pirate.gif"
    }
  ]

  function catClicked(url) {
    const view = document.getElementById("catsView");
    // instead of doing replaceChild and creating a new img element, you can
    // just manipulate the [innerHTML] straight away
    view.innerHTML = `<img src="${url}"/>`;
  }

  function createItem(name, url) {
    // create element [li] for list item
    const li = document.createElement('li');
    li.className = 'list-group-item cat';
    li.innerHTML = name;

    // addEventListener takes in the event string and a function
    li.addEventListener('click', () => catClicked(url));

    return li;
  }

  function createCatsList() {
    const ul = document.createElement('ul');
    ul.className = 'list-group';

    // the item lists inside
    const items = cats.map(({ name, url }) => createItem(name, url));
    items.forEach(item => ul.appendChild(item));

    // remove all active and only turn on for the target event
    ul.addEventListener('click', (event) => {
      items.forEach(item => item.classList.remove('active'));
      event.target.classList.add('active');
    });

    return ul;
  }

  function init() {
    // create list and put into <div id="catsList">
    const list = createCatsList();
    document.querySelector('#catsList').appendChild(list);
  }

  document.addEventListener('DOMContentLoaded', init);
})();
