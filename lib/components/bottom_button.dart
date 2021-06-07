import 'package:flutter/material.dart';
import 'package:bmicalculator_app/constants.dart';

class Bottombuttom extends StatelessWidget {
  Bottombuttom({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kbottomcontainercolor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonTitle,
              style: klargebuttonstyle,
            ),
          ],
        ),
      ),
    );
  }
}
