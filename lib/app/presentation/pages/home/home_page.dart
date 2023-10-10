import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/application/quiz/quiz_bloc.dart';
import 'package:quiz_app/app/presentation/constants/colors.dart';
import 'package:quiz_app/app/presentation/constants/dimens.dart';
import 'package:quiz_app/app/presentation/constants/images.dart';
import 'package:quiz_app/app/presentation/constants/text_style.dart';
import 'package:quiz_app/app/presentation/helpers/ui_helper.dart';
import 'package:quiz_app/app/presentation/router.dart';
import 'package:quiz_app/app/presentation/widgets/app_scaffold.dart';
import 'package:quiz_app/app/presentation/widgets/button/primary_button.dart';
import 'package:quiz_app/app/presentation/widgets/button/secondary_button.dart';
import 'package:quiz_app/generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _HomeBodyPage();
  }
}

class _HomeBodyPage extends StatefulWidget {
  const _HomeBodyPage({super.key});

  @override
  State<_HomeBodyPage> createState() => _HomeBodyPageState();
}

class _HomeBodyPageState extends State<_HomeBodyPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<QuizBloc>(context).add(const QuizEvent.fetchData());
  }

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);

    return BlocBuilder<QuizBloc, QuizState>(
      builder: (context, state) {
        return AppScaffold(
          backgroundColor: cColorPrimary,
          isLoading: state.isLoading,
          body: Padding(
            padding: padding(horizontal: 48),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    cImageBulb,
                    width: 100,
                  ),
                  gapH32,
                  Text(
                    i10n.appTitle,
                    style: cTextAccentBold,
                  ),
                  gapH16,
                  Text(
                    i10n.appInfo,
                    style: cTextAccentMedSM,
                  ),
                  gapH64,
                  PrimaryButton(
                    onPressed: () {
                      context.pushNamed(
                        AppRouter.quiz,
                        pathParameters: {
                          'mode': "0",
                          'topicId': "1",
                        },
                      );
                    },
                    text: i10n.play.toUpperCase(),
                  ),
                  gapH8,
                  SecondaryButton(
                    onPressed: () {
                      context.push(AppRouter.topic);
                    },
                    text: i10n.topics.toUpperCase(),
                  ),
                  gapH24,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.share,
                              color: Colors.blue,
                            ),
                            gapW8,
                            Text(
                              i10n.share,
                              style: cTextAccentRegSM,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            gapW8,
                            Text(
                              i10n.rateUs,
                              style: cTextAccentRegSM,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
