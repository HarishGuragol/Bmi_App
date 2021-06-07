import 'package:bmicalculator_app/constants.dart';
import 'package:bmicalculator_app/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator_app/components/bottom_button.dart';
import 'package:bmicalculator_app/screens/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALACULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: ktitlestyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kCard_color,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kresultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Bottombuttom(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE CALCULATE BMI'),
          ],
        ));
  }
}
