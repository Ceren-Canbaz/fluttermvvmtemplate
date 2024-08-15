import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmtemplate/core/base/state/base_state.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_view.dart';
import 'package:fluttermvvmtemplate/core/components/text/locale_text.dart';
import 'package:fluttermvvmtemplate/core/extension/string_extension.dart';
import 'package:fluttermvvmtemplate/core/init/lang/locale_keys.g.dart';
import 'package:fluttermvvmtemplate/view/authenticate/test/viewmodel/test_view_model.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  late TestViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: viewModel,
      onModelReady: (model) {
        viewModel = model;
      },
      onPageBuilder: (context, value) => getScaffoldBody,
    );
  }

  Widget get getScaffoldBody => Scaffold(
        appBar: AppBar(
          actions: [changeLanguageIcon],
          title: welcomeText,
        ),
        floatingActionButton: floatingActionButtonIncrement,
        body: buildTextNumber,
      );

  LocaleText get welcomeText {
    return const LocaleText(
      value: LocaleKeys.welcome,
    );
  }

  IconButton get changeLanguageIcon => IconButton(
      onPressed: () {
        context.setLocale(const Locale("tr", "TR"));
      },
      icon: const Icon(Icons.language));

  FloatingActionButton get floatingActionButtonIncrement {
    return FloatingActionButton(
      onPressed: () {
        viewModel.incrementNumber();
      },
    );
  }

  Widget get buildTextNumber {
    return Observer(builder: (context) {
      return Text(
        viewModel.number.toString(),
      );
    });
  }
}
