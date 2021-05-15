import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1DE33);
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
//male = 1 female = 2
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = activeCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
        maleCardColor = activeCardColor;
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
                        updateColor(1);
                      });
                    },
                    child: ReuseableCard(
                      color: maleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: "Male",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReuseableCard(
                      color: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: "Female",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
