import 'package:bike_shoping_online/config/app_colors.dart';
import 'package:bike_shoping_online/config/app_images.dart';
import 'package:flutter/material.dart';

class SquareContainer extends StatelessWidget {
  const SquareContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Appcolors.grey, width: 2),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(AppImages.settingIcon),
      ),
    );
  }
}
