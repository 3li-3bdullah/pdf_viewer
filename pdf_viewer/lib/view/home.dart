import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pdf_viewer/controller/home_controller.dart';
import 'package:pdf_viewer/view/pdf_viewer.dart';

class Home extends GetWidget<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Download PDF 😉"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade100,
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => controller.showLoading != true
            ? Container(
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 100,
                  width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple.shade100),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage('assets/images/pdf_pic.jpg'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Ali Flutter 🤩🔥",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () => controller.filePath == null
                                ? controller.fetchPDF()
                                : Get.to(
                                    () => PDFViewer(
                                        filepath: controller.filePath!),
                                  ),
                            icon: controller.filePath == null
                                ? const Icon(
                                    Icons.download_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.file_open,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                      ],
                    ),
                  ),
                ),
              )
            : Center(
                child: Lottie.asset('assets/lottie/downloader.json'),
              ),
      ),
    );
  }
}
