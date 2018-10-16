import CatList from './CatList.js';

(async function() {
  document.addEventListener('DOMContentLoaded', async (event) => {
    const catList = new CatList();
    await catList.getCats();

    const form = document.getElementById('add-cat');
    form.addEventListener('submit', (event) => {
      event.preventDefault();

      const name = document.getElementById('catName').value;
      const description = document.getElementById('catDescription').value;
      const url = document.getElementById('catUrl').value;

      catList.addCat({name, description, url});
    });
  });
})();
