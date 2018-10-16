// taken from instacram with slight changes
export const createElement = (tag, data, options={}) => {
  const el = document.createElement(tag);
  el.textContent = data;

  return Object.entries(options).reduce(
    (element, [field, value]) => {
      element.setAttribute(field, value);
      return element;
    }, el);
}

// create todo item element
const createTodoItem = (todo) => {
  const { completed, id, title, userId } = todo;
  const listItem = createElement('li', title, { class: 'list-group-item' });
  return listItem;
}

export const createTodoList = (todos) => {
  const list = createElement('ul', null, { class: 'list-group' });
  todos.forEach(todo => list.appendChild(createTodoItem(todo)));
  return list;
}
