import 'package:flutter/material.dart';

import 'components/body.dart';

class OrderScreen extends StatelessWidget {
  static String routeName="/order";

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
      title: Text("Track Order", style: TextStyle(
        color: Colors.black
      ),),
      actions: [
        IconButton(
            icon: Icon(Icons.notifications),
        ),
      ],
    );
  }
}