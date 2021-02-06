import 'package:flutter/material.dart';

import 'components/body.dart';

class CheckoutScreen extends StatelessWidget {
  static String routeName = "/checkout";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
      ),
      title: Text("Checkout", style: TextStyle(
          color: Colors.black
      ),),
    );
  }
}