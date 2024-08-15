import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmtemplate/core/base/state/base_state.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_view.dart';
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
        floatingActionButton: floatingActionButtonIncrement,
        body: buildTextNumber,
      );

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
