/// 领域事件发布器
import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:flyme_app/shared/domain/model/domain_event.dart';
import 'package:flyme_app/shared/domain/model/domain_event_subscriber.dart';

EventBus _eventBus = EventBus();

class DomainEventPublisher {
  const DomainEventPublisher._();

  factory DomainEventPublisher.instance() => DomainEventPublisher._();

  void publish<T extends DomainEvent>(T event) {
    _eventBus.fire(event);
  }

  StreamSubscription<E> subscribe<E extends DomainEvent>(
      DomainEventSubscriber<E> subscriber) {
    return _eventBus.on<E>().listen(subscriber);
  }
}
