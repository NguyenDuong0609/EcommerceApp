import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  var _character;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
              "Choose your plan",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
          SizedBox(height: 10.0),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.paypal, color: Colors.indigo),
              title: Text("paypal"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.wallet, color: Colors.indigo),
              title: Text("Cash on Delivery"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}