import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/presentation/pages/home/home_page.dart';
import 'package:quiz_app/app/presentation/pages/quiz/quiz_page.dart';
import 'package:quiz_app/app/presentation/pages/result/result_page.dart';
import 'package:quiz_app/app/presentation/pages/topics/topics_page.dart';

class AppRouter {
  AppRouter._();
  static const String splashPage = '/splash-screen';
  static const String home = '/home';
  static const String topic = '/topic';
  static const String quiz = '/quiz';
  static const String result = '/result';

  static final GoRouter _router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: splashPage,
        builder: (context, state) => Container(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: topic,
        builder: (context, state) => const TopicsPage(),
      ),
      GoRoute(
        path: quiz,
        builder: (context, state) => const QuizPage(),
      ),
      GoRoute(
        path: result,
        builder: (context, state) => const ResultPage(),
      ),
    ],
  );

  static GoRouter get router => _router;
}
