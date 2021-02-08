import 'package:ecommerceApp/components/default_button.dart';
import 'package:ecommerceApp/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PaymentSuccessScreen extends StatelessWidget {
  static String routeName = "/payment_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Payment Success"),
      ),
      body: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Payment Success",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
