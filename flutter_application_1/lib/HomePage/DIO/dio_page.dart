import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dio_controller.dart';

class DioPage extends GetView<DioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DIO Page'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
