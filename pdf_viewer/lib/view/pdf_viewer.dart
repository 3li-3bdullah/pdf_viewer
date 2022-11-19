import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';


class PDFViewer extends StatelessWidget {
  const PDFViewer({super.key, required this.filepath});
  final String filepath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF Viewer 😍"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade100,
      ),
      body: PDFView(
        filePath: filepath,
      ),
    );
  }
}