import 'package:fluttermvvmtemplate/core/base/model/base_model.dart';
import 'package:fluttermvvmtemplate/core/constants/enums/http_request_enum.dart';

abstract class CoreDio {
  Future<void> fetchRequest<T extends BaseModel>(String path,
      {Object? data,
      required HttpTypes method,
      required T parseModel,
      void Function(int, int)? onReceiveProgress,
      Map<String, dynamic>? queryParameters});
}
