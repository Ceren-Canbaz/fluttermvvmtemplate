import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/state/base_state.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeData.primaryColor,
      height: dynamicHeight(
        0.1,
      ),
    );
  }
}
