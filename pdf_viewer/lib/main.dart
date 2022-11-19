import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_viewer/controller/my_binding.dart';
import 'package:pdf_viewer/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PDF Viewer',
      debugShowCheckedModeBanner: false,
      initialBinding: MyBinding(),
      home: Home(),
    );
  }
}
