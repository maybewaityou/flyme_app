import 'package:flyme_ddd/flyme_ddd.dart';

class UserCreated implements DomainEvent {
  final String id;

  const UserCreated(this.id);

  @override
  DateTime occurredOn() => DateTime.now();

  @override
  String toString() {
    return 'UserCreated{id: $id, occurredOn: ${occurredOn()}}';
  }
}
