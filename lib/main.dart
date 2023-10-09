import 'package:flutter/material.dart';
import 'package:quiz_app/app/presentation/router.dart';
import 'package:quiz_app/config/main/configure.dart';
import 'package:quiz_app/generated/l10n.dart';

void main() async {
  await configure();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      title: 'MLBB App',
      // theme: cThemeLight,
      localizationsDelegates: const [
        I10n.delegate,
      ],
    );
  }
}
