import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app/app/domain/failures/failures.dart';
import 'package:quiz_app/app/domain/topics/i_topics_repository.dart';
import 'package:quiz_app/app/domain/topics/topics.dart';
import 'package:quiz_app/app/domain/topics/topics_success/topics_success.dart';

part 'topics_event.dart';
part 'topics_state.dart';
part 'topics_bloc.freezed.dart';

@injectable
class TopicsBloc extends Bloc<TopicsEvent, TopicsState> {
  final ITopicsRepository _topicsRepository;
  TopicsBloc(this._topicsRepository) : super(TopicsState.init()) {
    on<TopicsEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    TopicsEvent event,
    Emitter<TopicsState> emit,
  ) async {
    await event.map(started: (event) async {
      emit(state.loading);
      final failureOrTopicList = await _topicsRepository.getData();
      failureOrTopicList.fold(
        (l) => emit(
          state.unmodified.copyWith(
            failureOrSuccessOption: some(
              left(l),
            ),
          ),
        ),
        (success) => emit(
          state.unmodified.copyWith(
            failureOrSuccessOption: some(
              right(
                TopicsSuccess(success.data),
              ),
            ),
            topicsOption: some(success.data),
          ),
        ),
      );
    });
  }
}
