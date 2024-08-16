import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_error.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_model.dart';
import 'package:fluttermvvmtemplate/core/constants/enums/http_request_enum.dart';
import 'package:fluttermvvmtemplate/core/init/network/core_dio.dart';

class CoreDioImpl with DioMixin implements Dio, CoreDio {
  final BaseOptions options;

  CoreDioImpl({required this.options});
  @override
  Future<R> fetchRequest<R, T extends BaseModel>(String path,
      {Object? data,
      required T parseModel,
      required HttpTypes method,
      void Function(int, int)? onReceiveProgress,
      Map<String, dynamic>? queryParameters}) async {
    final response = await request(
      path,
      options: Options(
        method: method.apiKey,
      ),
    );
    switch (response.statusCode) {
      case HttpStatus.ok:
        return _responseParser(parseModel, response.data);

      default:
        throw Exception(
          response.statusCode,
        );
    }
  }

  R _responseParser<R>(BaseModel model, dynamic data) {
    if (data is List) {
      return data.map((e) => model.fromJson(e)).toList() as R;
    } else if (data is Map<String, dynamic>) {
      return model.fromJson(data) as R;
    }
    return data as R;
  }
}
