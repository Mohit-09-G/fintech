import 'package:bike_shoping_online/config/app_images.dart';
import 'package:flutter/material.dart';

class PaymentListItems extends StatelessWidget {
  const PaymentListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment List",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Column(
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  spacing: 10,
                  children: [
                    Image.asset(
                      AppImages.electricityIcon,
                      height: 25,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Electricity",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Column(
                  spacing: 10,
                  children: [
                    Image.asset(
                      AppImages.internetIcon,
                      height: 25,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Internet",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Column(
                  spacing: 10,
                  children: [
                    Image.asset(
                      AppImages.voucherIcon,
                      height: 25,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Voucher",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Column(
                  spacing: 10,
                  children: [
                    Image.asset(
                      AppImages.assuranceIcon,
                      height: 25,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Assurance",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  spacing: 10,
                  children: [
                    Image.asset(
                      AppImages.merchantIcon,
                      height: 25,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Merchant",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Column(
                  spacing: 10,
                  children: [
                    Image.asset(
                      AppImages.mobileIcon,
                      height: 25,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Mobile \nCredit",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Column(
                  spacing: 10,
                  children: [
                    Image.asset(
                      AppImages.billIcon,
                      height: 25,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Bill",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Column(
                  spacing: 10,
                  children: [
                    Image.asset(
                      AppImages.moreIcon,
                      height: 25,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "More",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
