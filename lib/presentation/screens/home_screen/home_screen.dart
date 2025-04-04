import 'package:bike_shoping_online/config/app_colors.dart';
import 'package:bike_shoping_online/presentation/controller/home_screen/home_screen_controller.dart';
import 'package:bike_shoping_online/presentation/screens/home_screen/widgets/btin.dart';
import 'package:bike_shoping_online/presentation/screens/home_screen/widgets/green_container_iitems.dart';
import 'package:bike_shoping_online/presentation/screens/home_screen/widgets/home_screen_setting.dart';
import 'package:bike_shoping_online/presentation/screens/home_screen/widgets/horizontalslider.dart';
import 'package:bike_shoping_online/presentation/screens/home_screen/widgets/payment_list_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        return Scaffold(
          bottomNavigationBar: Btin(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight * 0.01),
            child: SizedBox(height: screenHeight * 0.01),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02,
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  HomeScreenSetting(),
                  SizedBox(height: screenHeight * 0.03),

                  // Greeting Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                "Hello Andre,",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                "Your available balance",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                  color: Appcolors.txtgrey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "\$15,901",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: screenWidth * 0.07,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: screenHeight * 0.02),

                  // Green Container Items
                  SizedBox(
                    height: screenHeight * 0.1,
                    child: GreenContainerIitems(),
                  ),

                  SizedBox(height: screenHeight * 0.02),

                  // Payment List Items
                  SizedBox(
                    height: screenHeight * 0.3,
                    child: PaymentListItems(),
                  ),

                  SizedBox(height: screenHeight * 0.02),

                  // Promo & Discount Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        child: Text(
                          "Promo & Discount",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "See more",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.green,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: screenHeight * 0.02),

                  // Horizontal Slider List
                  SizedBox(
                    height: screenHeight * .2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.sliderItems.length,
                      itemBuilder: (context, index) {
                        var items = controller.sliderItems[index];
                        return Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.03),
                          child: HorizontalSlider(
                            title: items.title,
                            description: items.description,
                            icon: items.icon,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
