import 'package:get/get.dart';
import 'package:pdf_viewer/controller/home_controller.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(() => HomeController());
  }

}