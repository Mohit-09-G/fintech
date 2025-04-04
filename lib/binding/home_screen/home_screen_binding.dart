import 'package:bike_shoping_online/di/injection.dart';
import 'package:bike_shoping_online/presentation/controller/home_screen/home_screen_controller.dart';
import 'package:get/get.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeScreenController>(getIt<HomeScreenController>());
  }
}
