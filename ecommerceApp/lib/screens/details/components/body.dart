import 'package:ecommerceApp/components/default_button.dart';
import 'package:ecommerceApp/components/rounded_icon_btn.dart';
import 'package:ecommerceApp/constants.dart';
import 'package:ecommerceApp/screens/cart/cart_screen.dart';
import 'package:ecommerceApp/screens/details/components/product_description.dart';
import 'package:ecommerceApp/screens/details/components/product_images.dart';
import 'package:ecommerceApp/screens/details/components/top_rounded_container.dart';
import 'package:ecommerceApp/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/Product.dart';
import 'package:flutter/material.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(40),
                          ),
                          child: DefaultButton(
                            text: "Add to Cart",
                            press: () => Navigator.pushNamed(context, CartScreen.routeName),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}