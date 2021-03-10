import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user_model.dart';
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
        body: controller.obx((state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return ListTile(
                title: Text(item.name),
                subtitle: Text('Quantidade de types: ${item.types.length} '),
              );
            },
          );
        }, onError: (error) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(error),
                TextButton(
                    onPressed: () => controller.findUsers(),
                    child: Text('Tentar novamente!'))
              ],
            ),
          );
        }));
  }
}
