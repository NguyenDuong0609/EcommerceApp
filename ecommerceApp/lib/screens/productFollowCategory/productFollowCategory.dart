import 'package:ecommerceApp/components/custom_bottom_nav_bar.dart';
import 'package:ecommerceApp/components/default_button.dart';
import 'package:ecommerceApp/constants.dart';
import 'package:ecommerceApp/models/Product.dart';
import 'package:ecommerceApp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceApp/models/Cart.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../enums.dart';
import 'components/body.dart';

class ProductFollowCategoryScreen extends StatelessWidget {
  static String routeName = "/products";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "List Product",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}