import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/app/application/topics/topics_bloc.dart';
import 'package:quiz_app/app/domain/topics/topics.dart';
import 'package:quiz_app/app/presentation/constants/colors.dart';
import 'package:quiz_app/app/presentation/constants/dimens.dart';
import 'package:quiz_app/app/presentation/constants/text_style.dart';
import 'package:quiz_app/app/presentation/helpers/ui_helper.dart';
import 'package:quiz_app/app/presentation/router.dart';
import 'package:quiz_app/app/presentation/widgets/app_scaffold.dart';
import 'package:quiz_app/app/presentation/widgets/text_field.dart';
import 'package:quiz_app/config/injection.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:shimmer/shimmer.dart';

part './widgets/topics_item.dart';
part './widgets/topics_loading_widget.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<TopicsBloc>()..add(const TopicsEvent.started()),
      child: const _TopicsBodyPage(),
    );
  }
}

class _TopicsBodyPage extends StatelessWidget {
  const _TopicsBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    return BlocConsumer<TopicsBloc, TopicsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return AppScaffold(
          backgroundColor: cColorPrimary,
          appBar: AppBar(
            backgroundColor: cColorPrimary,
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 22,
              ),
              onPressed: () {
                context.pop();
              },
            ),
            title: Text(
              i10n.topics,
              style: cTextAccentMed,
            ),
          ),
          body: ListView(
            padding: padding(horizontal: Sizes.p16, vertical: Sizes.p24),
            children: [
              PrimarySearchField(),
              state.isLoading
                  ? const TopicsLoadingWidget()
                  : ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: state.topicList.length,
                      itemBuilder: (context, index) {
                        var data = state.topicList[index];
                        return _TopicsItem(data: data);
                      },
                    )
            ],
          ),
        );
      },
    );
  }
}
