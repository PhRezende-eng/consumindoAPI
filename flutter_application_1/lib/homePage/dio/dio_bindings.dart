import 'package:dio/dio.dart';
import 'package:flutter_application_1/homePage/dio/dio_controller.dart';
import 'package:flutter_application_1/homePage/dio/repositoryDio/user_repository_dio.dart';
import 'package:flutter_application_1/repository/i_user_repository.dart';
import 'package:get/get.dart';

class DioBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put<IUserRepository>(UserRepositoryDio(Get.find()));
    Get.put(DioController(Get.find()));
  }
}
