import 'dart:collection';

import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  const BaseView(
      {super.key,
      required this.viewModel,
      required this.onModelReady,
      required this.onPageBuilder,
      required this.onDispose});
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final T viewModel;
  final Function(T model) onModelReady;
  final VoidCallback onDispose;
  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();

    widget.onModelReady(
      widget.viewModel,
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, widget.viewModel);
  }
}
