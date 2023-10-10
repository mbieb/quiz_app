import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/application/quiz/quiz_bloc.dart';
import 'package:quiz_app/app/presentation/constants/colors.dart';
import 'package:quiz_app/app/presentation/constants/images.dart';
import 'package:quiz_app/app/presentation/helpers/failure_helper.dart';
import 'package:quiz_app/app/presentation/helpers/ui_helper.dart';
import 'package:quiz_app/app/presentation/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<QuizBloc>(context).add(
      const QuizEvent.fetchData(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<QuizBloc, QuizState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => null,
          (success) => success.fold(
              (failure) => failure.maybeWhen(
                    orElse: () => appFailureHandler(failure, context),
                  ), (r) {
            context.push(AppRouter.home);
          }),
        );
      },
      child: Scaffold(
        backgroundColor: cColorPrimary2,
        body: Center(
          child: Padding(
            padding: padding(bottom: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    cImageBulb,
                    width: 150,
                  ),
                ),
                const CircularProgressIndicator(
                  color: cColorWhite,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
