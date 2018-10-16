import { createElement } from './helpers.js'

export default class CatList {
  constructor() {
    this.state = {loaded: false, cats: []};
    this.render();
  }

  async getCats() {
    try {
      const response = await fetch('http://127.0.0.1:5000/cats');
      const cats = await response.json();
      console.log(cats);
      this.setState({loaded:true, cats});
    } catch(err) {
      console.warn(`API_ERROR: ${err.message}`);
    }
  }

  setState(newState) {
    const nextState = {...this.state, ...newState};
    if (nextState !== this.state) {
      this.state = nextState;
      this.render();
    }
  }

  async addCat(cat) {
    try {
      const response = await fetch('http://127.0.0.1:5000/cats', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json; charset=utf-8',
        },
        body: JSON.stringify(cat)
      });
      const { _id } = await response.json();
    } catch(err) {
      console.warn(`API_ERROR: ${err.message}`);
    }
    this.setState({
      cats: [...cats, {_id, ...cat}]
    });
  }

  async displayCat(_id) {
    try {
      const response = await fetch(`http://127.0.0.1:5000/cats/${_id}`);
      const { url } = await response.json();
      const displayCatEl = document.getElementById('displayCat');
      const img = document.createElement('img');
      img.src = url;
      displayCatEl.innerHTML = img.outerHTML;
    } catch(err) {
      console.warn(`API_ERROR: ${err.message}`);
    }
  }

  renderCatItem(cat) {
    const { name, description, url, _id } = cat;
    const item = createElement('card', null, { class: 'list-group-item' });
    item.innerHTML =
      `<h5 class="card-title">${name}</h5>
      <h6 class="card-subtitle mb-2 text-muted">${description}</h6>`;
    item.addEventListener('click', async () => this.displayCat(_id));
    return item;
  }

  render() {
    const { loaded, cats } = this.state;
    const el = document.getElementById('catsList');
    let toRender;

    if (!loaded) {
      toRender = createElement('p', 'Loading...');
    }

    const list = createElement('ul', null, { class: 'list-group' });
    cats.forEach(cat => list.appendChild(this.renderCatItem(cat)));
    toRender = list;

    el.appendChild(toRender);
  }
}
