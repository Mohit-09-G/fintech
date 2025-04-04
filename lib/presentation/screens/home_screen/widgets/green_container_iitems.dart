import 'package:bike_shoping_online/config/app_colors.dart';
import 'package:bike_shoping_online/config/app_images.dart';
import 'package:flutter/material.dart';

class GreenContainerIitems extends StatelessWidget {
  const GreenContainerIitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Appcolors.greenColor, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              spacing: 5,
              children: [
                Image.asset(
                  AppImages.transferIcon,
                  height: 35,
                ),
                Text(
                  "Transfer",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              spacing: 5,
              children: [
                Image.asset(
                  AppImages.topUPIcon,
                  height: 35,
                ),
                Text(
                  "Top Up",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              spacing: 5,
              children: [
                Image.asset(
                  AppImages.historyIcon,
                  height: 35,
                ),
                Text(
                  "History",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
