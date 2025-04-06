import 'package:bike_shoping_online/config/app_colors.dart';
import 'package:bike_shoping_online/config/app_images.dart';
import 'package:bike_shoping_online/presentation/controller/mainScreen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Btin extends StatefulWidget {
  const Btin({super.key});

  @override
  State<Btin> createState() => _BtinState();
}

class _BtinState extends State<Btin> {
  final MainScreenController controller = Get.put(MainScreenController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildButton(AppImages.homeIcon, 0, controller),
          _buildButton(AppImages.chartIcon, 1, controller),
          _buildButton(AppImages.notifficationIcon, 2, controller),
          _buildButton(AppImages.personIcon, 3, controller),
        ],
      ),
    );
  }

  Widget _buildButton(
      String iconPath, int index, MainScreenController controller) {
    return Obx(() {
      bool isSelected = controller.selectedIndex.value == index;
      return IconButton(
          onPressed: () {
            controller.changeIndex(index);
          },
          icon: Image.asset(
            iconPath,
            width: 30,
            height: 30,
            color: isSelected ? Appcolors.greenColor : Colors.white,
          ));
    });
  }
}
