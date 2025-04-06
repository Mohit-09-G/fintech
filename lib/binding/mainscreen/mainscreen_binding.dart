import 'package:bike_shoping_online/di/injection.dart';
import 'package:bike_shoping_online/presentation/controller/mainScreen/main_screen.dart';
import 'package:get/get.dart';

class MainscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainScreenController>((getIt<MainScreenController>()));
  }
}
