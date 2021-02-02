import 'package:ecommerceApp/components/custom_surfix_icon.dart';
import 'package:ecommerceApp/components/default_button.dart';
import 'package:ecommerceApp/components/form_error.dart';
import 'package:ecommerceApp/components/socal_card.dart';
import 'package:ecommerceApp/constants.dart';
import 'package:ecommerceApp/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text(
              "Register Account",
              style: headingStyle,
            ),
            Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocalCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocalCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              "By continuting your confirm that you agree \nwith our Term and Condition",
              textAlign: TextAlign.center,
            )
          ],
        )),
      ),
    );
  }
}
