import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:whishlist/app/data/models/notification.dart';
import 'package:whishlist/app/data/repositories/repositories.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

@injectable
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc(this._repository) : super(const _Initial());

  final NotificationRepository _repository;

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    yield* event.when(
      started: () async* {
        yield const _Loading();

        final notifications = _repository.getAll();

        yield _Ready(notifications);
      },
    );
  }
}
