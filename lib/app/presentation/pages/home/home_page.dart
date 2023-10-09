import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    return const _HomeBodyPage();
  }
}

class _HomeBodyPage extends StatelessWidget {
  const _HomeBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    return AppScaffold(
      backgroundColor: cColorPrimary,
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
                onPressed: () {},
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
  }
}
