import 'package:ecommerceApp/constants.dart';
import 'package:ecommerceApp/screens/order/components/showStepper.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Order Number 001", style: headingStyle),
          Text("Order Confirmed. Ready to Pick", style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            height: 1,
            color: Colors.grey,
          ),
          ShowStepper(),
        ],
      ),
    );
  }
}