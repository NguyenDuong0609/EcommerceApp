import 'package:ecommerceApp/components/custom_surfix_icon.dart';
import 'package:ecommerceApp/components/default_button.dart';
import 'package:ecommerceApp/components/form_error.dart';
import 'package:ecommerceApp/constants.dart';
import 'package:ecommerceApp/screens/complete_profile/components/complete_proflie_form.dart';
import 'package:ecommerceApp/size_config.dart';
import 'package:flutter/material.dart';

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
                'Complete Profile',
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                "By continuting your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
