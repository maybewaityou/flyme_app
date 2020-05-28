/// 数据模型 - 值对象
class User {
  final name;
  final age;
  final dog;

  const User(this.name, this.age, this.dog);
}

class Dog {
  final name;

  const Dog(this.name);
}
