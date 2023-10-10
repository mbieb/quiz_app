import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app/app/domain/failures/failures.dart';
import 'package:quiz_app/app/domain/quiz/i_quiz_repository.dart';
import 'package:quiz_app/app/domain/quiz/quiz.dart';
import 'package:quiz_app/app/domain/quiz/quiz_success/quiz_success.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';
part 'quiz_bloc.freezed.dart';

@injectable
class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final IQuizRepository _quizRepository;
  QuizBloc(this._quizRepository) : super(QuizState.init()) {
    on<QuizEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    QuizEvent event,
    Emitter<QuizState> emit,
  ) async {
    await event.map(
      fetchData: (event) async {
        emit(state.loading);
        final failureOrQuizList = await _quizRepository.getData();
        failureOrQuizList.fold(
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
                  QuizSuccess(success.data),
                ),
              ),
              quizListOption: some(success.data),
            ),
          ),
        );
      },
      started: (event) async {
        List<Question> questions = [];
        if (event.mode == "0") {
          questions = state.getRandomQuestionList;
        } else {
          questions = state.getQuestionsByTopicId(event.topicId ?? '');
        }
        emit(
          state.unmodified.copyWith(
            questionListOption: some(questions),
          ),
        );
      },
    );
  }
}
