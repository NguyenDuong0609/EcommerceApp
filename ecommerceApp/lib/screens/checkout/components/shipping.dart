import 'package:flutter/material.dart';

class shipping extends StatelessWidget {
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
            Icon(Icons.location_on, color: Colors.black,),
            Text("Shipping Address"),
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
                child: Text(
                  "Content Address",
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Text(
                  "Adding Shipping Note",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}