import 'package:api_practice/controllers/home/home_controller.dart';
import 'package:get/get.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
