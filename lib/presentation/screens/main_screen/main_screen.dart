import 'package:bike_shoping_online/presentation/controller/mainScreen/main_screen.dart';
import 'package:bike_shoping_online/presentation/screens/home_screen/home_screen.dart';
import 'package:bike_shoping_online/presentation/screens/main_screen/btin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List items = <Widget>[
    HomeScreen(),
    Container(
      height: 100,
      color: Colors.orange,
    ),
    Container(
      height: 100,
      color: Colors.pink,
    ),
    Container(
      height: 100,
      color: Colors.blue,
    ),
    Container(
      height: 100,
      color: Colors.green,
    ),
  ];

  final MainScreenController controller = Get.put(MainScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return items[controller.selectedIndex.value];
      }),
      bottomNavigationBar: Btin(),
    );
  }
}
