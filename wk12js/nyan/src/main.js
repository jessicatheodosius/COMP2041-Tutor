import CatList from './CatList.js';

(async function() {
  document.addEventListener('DOMContentLoaded', async (event) => {
    const catList = new CatList();
    await catList.getCats();
  });
})();
