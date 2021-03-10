import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guia acesso API'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
            onPressed: () => Get.toNamed('/dio'),
            child: Text(
              'DIO',
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
