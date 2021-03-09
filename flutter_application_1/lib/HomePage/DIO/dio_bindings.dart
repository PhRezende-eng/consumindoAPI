import 'package:flutter_application_1/HomePage/DIO/dio_controller.dart';
import 'package:get/get.dart';

class DioBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(DioController());
  }
}
