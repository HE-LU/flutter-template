import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Notifier which is used only to listen.
class EventNotifier<T> extends StateNotifier<T> {
  // ignore: use_super_parameters
  EventNotifier(T state) : super(state);

  @override
  bool updateShouldNotify(T old, T current) {
    return true;
  }

  // ignore: use_setters_to_change_properties
  void send(T event) {
    state = event;
  }
}
