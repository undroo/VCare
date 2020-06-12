import 'package:VCare/Widgets/large_button.dart';
import 'package:flutter/material.dart';

class DeliveryScreen extends StatefulWidget {
  static const String route = '/delivery_screen';

  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  void showSuccess() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
          title: Center(
            child: Text('Success!', style: TextStyle(fontSize: 50)),
          ),
          children: <Widget>[
            SizedBox.shrink(),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  (MediaQuery.of(context).orientation == Orientation.portrait)
                      ? 2
                      : 3),
          children: <Widget>[
            LargeButton(
              onPress: showSuccess,
              name: 'Groceries',
              color: Colors.green,
              icon: Icon(Icons.shopping_cart, size: 80),
            ),
            LargeButton(
              onPress: showSuccess,
              name: 'Electronics',
              color: Colors.yellow[700],
              icon: Icon(Icons.lightbulb_outline, size: 80),
            ),
            LargeButton(
              onPress: showSuccess,
              name: 'Toiletries',
              color: Colors.lightBlueAccent,
              icon: Icon(Icons.delete, size: 80),
            ),
            LargeButton(
              onPress: showSuccess,
              name: 'Medicine',
              color: Colors.redAccent,
              icon: Icon(Icons.airline_seat_flat, size: 80),
            ),
          ],
        ),
      ),
    );
  }
}
