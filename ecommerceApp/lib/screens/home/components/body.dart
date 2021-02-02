import 'package:ecommerceApp/components/product_card.dart';
import 'package:ecommerceApp/constants.dart';
import 'package:ecommerceApp/models/Product.dart';
import 'package:ecommerceApp/screens/home/components/popular_products.dart';
import 'package:ecommerceApp/screens/home/components/search_field.dart';
import 'package:ecommerceApp/screens/home/components/icon_btn_with_counter.dart';
import 'package:ecommerceApp/screens/home/components/section_title.dart';
import 'package:ecommerceApp/screens/home/components/special_offers.dart';
import 'package:ecommerceApp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}