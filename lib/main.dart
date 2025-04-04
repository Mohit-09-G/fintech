import 'package:bike_shoping_online/app_pages.dart';
import 'package:bike_shoping_online/binding/home_screen/home_screen_binding.dart';
import 'package:bike_shoping_online/config/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bike_shoping_online/di/injection.dart' as get_it;

void main() async {
  await get_it.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeScreenBinding(),
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
