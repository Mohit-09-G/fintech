import 'package:bike_shoping_online/binding/home_screen/home_screen_binding.dart';
import 'package:bike_shoping_online/config/app_routes.dart';
import 'package:bike_shoping_online/presentation/screens/home_screen/home_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.home,
        page: () => HomeScreen(),
        binding: HomeScreenBinding()),
  ];
}
