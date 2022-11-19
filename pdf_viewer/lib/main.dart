import 'package:flutter/material.dart';
import 'package:pdf_viewer/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF Viewer',
      theme: ThemeData(
        primarySwatch: MaterialColor(1, {1: Colors.deepPurple.shade100}),
      ),
      home: const Home(),
    );
  }
}
