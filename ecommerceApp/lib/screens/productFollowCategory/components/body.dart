import 'package:ecommerceApp/constants.dart';
import 'package:ecommerceApp/models/Cart.dart';
import 'package:ecommerceApp/models/Product.dart';
import 'package:ecommerceApp/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'product_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
             padding: const EdgeInsets.all(20),
            child: Text("Product List"),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 16,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                  SizeConfig.orientation == Orientation.portrait ? 2 : 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.693,
              ),
              itemBuilder: (context, index) =>
                  ProductCardCategory(),
            ),
          ),
        ],
      ),
    );
  }
}

