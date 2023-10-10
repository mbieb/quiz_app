import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/app/application/quiz/quiz_bloc.dart';
import 'package:quiz_app/app/presentation/constants/colors.dart';
import 'package:quiz_app/app/presentation/widgets/app_scaffold.dart';
import 'package:quiz_app/config/injection.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<QuizBloc>()..add(const QuizEvent.started()),
      child: const _QuizBodyPage(),
    );
  }
}

class _QuizBodyPage extends StatelessWidget {
  const _QuizBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizBloc, QuizState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return AppScaffold(
          backgroundColor: cColorPrimary,
        );
      },
    );
  }
}
