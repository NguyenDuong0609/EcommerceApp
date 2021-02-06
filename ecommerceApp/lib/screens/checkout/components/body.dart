import 'package:ecommerceApp/screens/checkout/components/section_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            item(),
            SizedBox(height: 8.0,),
            item(),
          ],
        ),
    );
  }
}