import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  LargeButton({this.onPress, this.name, this.icon, this.color = Colors.blue});
  final Function onPress;
  final String name;
  final Icon icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 3.0,
                offset: Offset(2, 2),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: AutoSizeText(
                  name, //name
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  minFontSize: 0,
                ),
              ),
              Center(child: icon),
            ],
          ),
        ),
      ),
      onTap: onPress,
    );
  }
}
