import 'package:flutter/material.dart';

abstract class BaseViewModel {
  late BuildContext context;
  void setBuildContext(BuildContext context);
  void initBaseModel();
}
