import 'package:bike_shoping_online/binding/models/slider_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxList<SliderItem> sliderItems = <SliderItem>[
    SliderItem(
      title: "Exclusive Offer",
      description: "Get 50% off on your first purchase!",
      icon: Icons.local_offer,
    ),
    SliderItem(
      title: "Free Delivery",
      description: "Enjoy free delivery on orders above \$50.",
      icon: Icons.delivery_dining,
    ),
    SliderItem(
      title: "Flash Sale",
      description: "Hurry up! Limited-time flash sale.",
      icon: Icons.flash_on,
    ),
    SliderItem(
      title: "New Arrivals",
      description: "Check out the latest trendy products!",
      icon: Icons.new_releases,
    ),
  ].obs;
}
