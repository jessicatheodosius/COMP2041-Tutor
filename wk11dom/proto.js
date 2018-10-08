function Person(name){
  this.name = name;
}

function getName() {
  return this.name;
}

function Student(name, zid) {
  Person.call(this, name);
  this.zid = zid;
}

Person.prototype.getName = getName;
// try this first
Student.prototype = Person.prototype;

// this is the inheritance
// Student.prototype = new Person();
Student.prototype.getZid = function getZid() {
  console.log('Calling getZid');
  return this.zid;
}

console.log(Person.prototype);
console.log(Student.prototype);

jess = new Student('Jessica', 'z5057844');
console.log(jess.getName(), jess.getZid());
