import 'package:flyme_ddd/flyme_ddd.dart';

class UserCreated implements DomainEvent {
  final String id;

  const UserCreated._(this.id);
  factory UserCreated(String id) => UserCreated._(id);

  @override
  DateTime occurredOn() => DateTime.now();

  @override
  String toString() {
    return 'UserCreated{id: $id, occurredOn: ${occurredOn()}}';
  }
}
