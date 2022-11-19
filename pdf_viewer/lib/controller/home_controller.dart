import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

/// The App Is Simple.😉.,
///  So I Don't Wanna Make File constants For Just This Line, Got It ?..
const String pdfUrl = "https://www.orimi.com/pdf-test.pdf";

class HomeController extends GetxController {
  /// .............. Declaring Variables ..😋.😋.😋................
  RxString? filePath;

  
  /// .............. Declaring Methods ..🤩.🤩.🤩..................
  Future<void> fetchPDF() async {
    http.Response response = await http.get(Uri.parse(pdfUrl));

    Directory dir = await getTemporaryDirectory();
    File file = File("${dir.path}/data.pdf");

    await file.writeAsBytes(response.bodyBytes, flush: true);
    filePath!.value = file.path;
  }
}
