import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage/DIO/dio_bindings.dart';
import 'package:get/get.dart';
import 'HomePage/DIO/dio_page.dart';
import 'HomePage/DIO/dio_bindings.dart';
import 'HomePage/homePage.dart';

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
