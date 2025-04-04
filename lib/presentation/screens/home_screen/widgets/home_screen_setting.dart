import 'package:bike_shoping_online/presentation/screens/home_screen/widgets/app_logo_name.dart';
import 'package:bike_shoping_online/presentation/screens/home_screen/widgets/square_container.dart';
import 'package:flutter/material.dart';

class HomeScreenSetting extends StatelessWidget {
  const HomeScreenSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [AppLogoName(), SquareContainer()],
        ),
      ],
    );
  }
}
