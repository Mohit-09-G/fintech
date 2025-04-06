import 'package:bike_shoping_online/config/app_colors.dart';
import 'package:bike_shoping_online/config/app_images.dart';
import 'package:bike_shoping_online/data/notification_services.dart';
import 'package:flutter/material.dart';

class SquareContainer extends StatefulWidget {
  const SquareContainer({super.key});

  @override
  State<SquareContainer> createState() => _SquareContainerState();
}

class _SquareContainerState extends State<SquareContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        print("click");
        await NotificationService().showNotification(
            title: "Hello User",
            body: "This is your daily notification!",
            id: 1);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Appcolors.grey, width: 2),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AppImages.settingIcon),
        ),
      ),
    );
  }
}
