import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}
