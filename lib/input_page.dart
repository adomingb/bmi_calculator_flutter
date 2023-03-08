import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'reusable_child.dart';

const bottomContainerHeight = 70.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      cardFunction: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: ReusableChild(FontAwesomeIcons.mars, 'MALE')),
                ),
                Expanded(
                  child: ReusableCard(
                      cardFunction: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild:
                          ReusableChild(FontAwesomeIcons.venus, 'FEMALE')),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: activeCardColor,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  color: activeCardColor,
                )),
                Expanded(
                    child: Container(
                  color: activeCardColor,
                )),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
