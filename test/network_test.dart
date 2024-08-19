import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_error.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_model.dart';
import 'package:fluttermvvmtemplate/view/authenticate/test/model/test_model.dart';

main() {
  setUp(
    () => {
      log(
        "here",
      ),
    },
  );
  test("dynamic parse", () {
    final error = BaseError(message: "test error");
    final errorDynamic = error as dynamic;
    final x = hello<List<TestModel>, TestModel>();

    expect(errorDynamic, isNotNull);
  });
}

R hello<R, T extends BaseModel>() {
  return BaseError(message: "aa") as dynamic;
}
