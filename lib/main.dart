import 'dart:io';
import 'package:bike_shoping_online/binding/mainscreen/mainscreen_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:bike_shoping_online/app_pages.dart';

import 'package:bike_shoping_online/config/app_routes.dart';
import 'package:bike_shoping_online/data/notification_services.dart';
import 'package:bike_shoping_online/di/injection.dart' as get_it;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final notificationService = NotificationService();
  await notificationService.initNotification();

  if (Platform.isAndroid) {
    final androidPlugin = notificationService.notificationPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    final granted = await androidPlugin?.requestNotificationsPermission();
    print("Android Notification Permission Granted: $granted");
  }

  // Initialize dependency injection
  await get_it.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MainscreenBinding(),
      initialRoute: AppRoutes.mainScree,
      getPages: AppPages.pages,
    );
  }
}
