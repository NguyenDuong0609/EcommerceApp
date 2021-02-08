import 'package:ecommerceApp/components/default_button.dart';
import 'package:ecommerceApp/screens/payment/components/payment_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../size_config.dart';
import 'components/body.dart';

class PaymentScreen extends StatelessWidget {
  static String routeName = "/payment";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
      ),
      title: Text(
        "Payment",
        style: TextStyle(
          color: Colors.black
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenWidth(30)
      ),
      //height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                      text: "Total:\n",
                      children: [
                        TextSpan(
                          text: "\$337.15",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ]
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Pay",
                    press: () => Navigator.pushNamed(context, PaymentSuccessScreen.routeName),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}