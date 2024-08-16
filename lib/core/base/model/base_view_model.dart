import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/init/network/core_dio.dart';
import 'package:fluttermvvmtemplate/core/init/network/network_manager.dart';

abstract class BaseViewModel {
  void setBuildContext(BuildContext context);
  void initBaseModel();
  CoreDio coreDio = NetworkManager.instance.coreDio!;
}
