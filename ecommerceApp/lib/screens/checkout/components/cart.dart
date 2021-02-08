import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: ListTile(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.shopping_cart, color: Colors.black,),
            Text("Cart"),
          ],
        ),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: ListTile(
                  title: Text('Product Name'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Content"),
                      Text("Size"),
                    ],
                  ),
                  leading: Image.asset(
                    "assets/images/ps4_console_blue_1.png",
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: ListTile(
                  title: Text('Product Name'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Content"),
                      Text("Size"),
                    ],
                  ),
                  leading: Image.asset(
                    "assets/images/ps4_console_white_1.png",
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}