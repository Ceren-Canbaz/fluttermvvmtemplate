import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import '../../../../core/constants/enums/app_theme_enum.dart';
import '../../../../core/init/notifier/theme_notifier.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase extends BaseViewModel with Store {
  BuildContext? buildContext;
  @observable
  int number = 0;

  @computed
  bool get isEven => number % 2 == 0;

  @action
  void incrementNumber() {
    number++;
  }

  @override
  void setBuildContext(BuildContext context) {
    buildContext = context;
  }

  @override
  void initBaseModel() {}

  void changeTheme() {
    if (buildContext != null) {
      Provider.of<ThemeNotifier>(buildContext!, listen: false)
          .changeValue(AppThemes.DARK);
    }
  }
}
