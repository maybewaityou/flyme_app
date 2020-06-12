/// 领域事件接收器
import 'package:flyme_app/shared/domain/model/domain_event.dart';

typedef DomainEventSubscriber<T extends DomainEvent> = void Function(T event);
