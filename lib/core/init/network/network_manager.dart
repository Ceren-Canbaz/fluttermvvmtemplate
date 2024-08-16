import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
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
    coreDio = CoreDioImpl(options: baseOptions);
    _dio = Dio(baseOptions);
    _dio!.interceptors.add(InterceptorsWrapper(
      onError: (error, handler) {
        log(error.message ?? "Some error occured");
      },
      onRequest: (options, handler) {},
      onResponse: (response, handler) {
        log("Data ${response.data}");
      },
    ));
  }
  Dio? _dio;
  Future dioGet<T extends BaseModel>(
      {required String path, required T model}) async {
    final response = await _dio?.get(path);
    if (response != null) {
      switch (response.statusCode) {
        case HttpStatus.ok:
          final responseBody = response.data;
          if (responseBody is List) {
            return responseBody.map((e) => model.fromJson(e)).toList();
          } else if (responseBody is Map<String, dynamic>) {
            return model.fromJson(responseBody);
          }
          return responseBody;
        default:
      }
    }
  }
}
