import 'package:easy_localization/easy_localization.dart';
import '../constants/app/app_constants.dart';

extension StringLocalization on String {
  String get locale => this.tr();
  dynamic get isValidEmail => contains(RegExp(
        ApplicationConstants.EMAIL_REGEX,
      ))
          ? null
          : "Email does not found";
}
