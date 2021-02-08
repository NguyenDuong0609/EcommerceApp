import 'package:ecommerceApp/screens/cart/cart_screen.dart';
import 'package:ecommerceApp/screens/checkout/checkout_screen.dart';
import 'package:ecommerceApp/screens/payment/components/payment_success.dart';
import 'package:ecommerceApp/screens/payment/payment_screen.dart';
import 'package:ecommerceApp/screens/order/order_screen.dart';
import 'package:ecommerceApp/screens/productFollowCategory/productFollowCategory.dart';
import 'package:ecommerceApp/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerceApp/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceApp/constants.dart';
import 'package:ecommerceApp/size_config.dart';

import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoko, Let's shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help peple connect with store",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop",
      "image": "assets/images/splash_3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index)),
                      ),
                      Spacer(flex: 3),
                      DefaultButton(
                        text: "Continue",
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8D),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
