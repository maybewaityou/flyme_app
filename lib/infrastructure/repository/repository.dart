/// 持久层 - 实现
import 'package:flyme_app/infrastructure/model/model.dart';

void test() {
  final user = User("userName", 20, Dog("wangcia"));
  user.name;
  user.dog.name;
  user.age;
}
