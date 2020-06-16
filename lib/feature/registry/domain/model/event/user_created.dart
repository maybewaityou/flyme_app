import 'package:flyme_app/shared/domain/model/domain_event.dart';

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
