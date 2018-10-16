function setName() {
  let name;

  changeName = () => {
    name = 'Jess';
    console.log(name);
  }

  setTimeout(changeName, 10);
  console.log(name);
}

setName();
