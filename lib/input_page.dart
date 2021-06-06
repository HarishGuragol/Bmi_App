import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seva_app/icon_content.dart';
import 'package:seva_app/reusable_card.dart';

const BottomContainerHeight = 75.0;
const Card_color = Color(0xFF1D1E33);
const no_card_color = Color(0xFF111328);
const bottomcontainercolor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = no_card_color;
  Color femaleCardColour = no_card_color;

  void updateColour(int gender) {
    //malecard is pressed 1 = male,  2 = female
    if (gender == 1) {
      if (maleCardColour == no_card_color) {
        maleCardColour = Card_color;
        femaleCardColour = no_card_color;
      } else {
        maleCardColour = no_card_color;
        femaleCardColour = Card_color;
      }
    } else if (gender == 2) {
      if (femaleCardColour == no_card_color) {
        femaleCardColour = Card_color;
        maleCardColour = no_card_color;
      } else {
        femaleCardColour = no_card_color;
        maleCardColour = Card_color;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
                      });
                    },
                    child: ReusableCard(
                      colour: no_card_color,
                      cardChild: Cardvalues(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(2);
                      });
                    },
                    child: ReusableCard(
                      colour: no_card_color,
                      cardChild: Cardvalues(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Card_color,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Card_color,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Card_color,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomcontainercolor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: BottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
