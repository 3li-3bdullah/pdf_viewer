import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:pdf_viewer/controller/home_controller.dart';

class Home extends GetWidget<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF Viewer 😍"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade100,
      ),
      body: PDFView(
        filePath: controller.filePath!.value,
      ),
    );
  }
}