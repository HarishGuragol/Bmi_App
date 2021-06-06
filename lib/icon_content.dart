import 'package:flutter/material.dart';
import 'package:bmicalculator_app/constants.dart';

class Cardvalues extends StatelessWidget {
  Cardvalues({@required this.icon, @required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 75.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}
