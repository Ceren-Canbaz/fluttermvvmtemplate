import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_error.dart';
import 'package:fluttermvvmtemplate/core/init/network/core_dio_impl.dart';
import 'package:fluttermvvmtemplate/core/init/network/core_dio.dart';
import '../../base/model/base_model.dart';

import '../../constants/enums/preferences_keys.dart';
import '../cache/local_manager.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  CoreDio? coreDio;
  NetworkManager._init() {
    final baseOptions = BaseOptions(baseUrl: "BASE_URL", headers: {
      "val": LocalManager.instance.getStringValue(PreferencesKey.TOKEN)
    });
    coreDio = CoreDioImpl(baseOptions: baseOptions);
  }
}
