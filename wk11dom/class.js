class Person {
  constructor(name) {
    this.name = name;
  }

  getName() {
    return this.name;
  }
}

class Student extends Person {
  constructor(name, zid) {
    super(name);
    this.zid = zid;
  }

  getZid() {
    return this.zid;
  }
}

jess = new Student('Jessica', 'z5057844');
console.log(jess.getName(), jess.getZid());

bob = new Person('Bob');
console.log(bob.getName(), bob.getZid());
