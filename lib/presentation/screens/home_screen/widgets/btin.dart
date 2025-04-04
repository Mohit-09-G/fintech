import 'package:bike_shoping_online/config/app_images.dart';
import 'package:flutter/material.dart';

class Btin extends StatelessWidget {
  const Btin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Image.asset(
            AppImages.homeIcon,
            height: 35,
          ),
          Image.asset(
            AppImages.chartIcon,
            height: 35,
          ),
          Image.asset(
            AppImages.notifficationIcon,
            height: 35,
          ),
          Image.asset(
            AppImages.personIcon,
            height: 35,
          )
        ],
      ),
    );
  }

  _Widget(String icon, int index, VoidCallback ontap) {}
}
