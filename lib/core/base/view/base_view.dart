import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  const BaseView({
    required this.viewModel,
    this.onModelReady,
    required this.onPageBuilder,
    this.onDispose,
    super.key,
  });
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final T viewModel;
  final Function(T model)? onModelReady;
  final VoidCallback? onDispose;
  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    if (widget.onModelReady != null) {
      widget.onModelReady!(
        widget.viewModel,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) {
      widget.onDispose!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, widget.viewModel);
  }
}
