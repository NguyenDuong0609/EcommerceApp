import 'package:flutter/material.dart';

class payment extends StatelessWidget {
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
            Icon(Icons.payment, color: Colors.black,),
            Text("Total Payment"),
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
                child: Row(
                  children: [
                    Text('Total Price:'),
                    Spacer(flex: 2,),
                    Text('12.00 USD'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Row(
                  children: [
                    Text('Shipping Price:'),
                    Spacer(flex: 2,),
                    Text('5.00 USD'),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Row(
                  children: [
                    Text('Voucher:'),
                    Spacer(flex: 2,),
                    Text('-1.00 USD'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}