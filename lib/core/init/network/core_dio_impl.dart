import 'package:dio/dio.dart';
import 'package:fluttermvvmtemplate/core/constants/enums/http_request_enum.dart';
import 'package:fluttermvvmtemplate/core/init/network/core_dio.dart';

class CoreDioImpl with DioMixin implements Dio, CoreDio {
  final BaseOptions options;

  CoreDioImpl({required this.options});

  @override
  void getRequest(args) {}

  void fetchRequest(String path,
      {Object? data,
      required HttpTypes method,
      void Function(int, int)? onReceiveProgress,
      Options? options,
      Map<String, dynamic>? queryParameters}) {
    final response = request(
      path,
      options: options?.copyWith(method: method.apiKey) ??
          Options(
            method: method.apiKey,
          ),
    );
  }
}
