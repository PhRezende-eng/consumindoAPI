import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage/dio/dio_bindings.dart';
import 'package:get/get.dart';
import 'homePage/dio/dio_page.dart';
import 'homePage/dio/dio_bindings.dart';
import 'homePage/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => HomePage(), children: [
          GetPage(
            name: '/dio',
            page: () => DioPage(),
            binding: DioBindings(),
          )
        ])
      ],
    );
  }
}
