
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';





//example of enum
enum Gender {
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  // example of Ternary Operator
                  colour: selectedGender == Gender.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',),
                    ),
              ),

              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',),
                ),
            ),
          ]
            
          )
          ),
          Expanded(child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget> [
                        Text(
                          height.toString(),
                          style: kHeavyLabelTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ]
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                          RoundSliderThumbShape (enabledThumbRadius: 15.0),
                        overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),

                      ), child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 230.0,

                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),)],
                ),),
              )

            ],
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                  colour: kActiveCardColour
              )
              ),
              Expanded(child: ReusableCard(
                  colour: kActiveCardColour
              )
              )
            ],
          )),

          Container(
            color: kBottomContainerColour,
            margin: EdgeInsets.only(top: kBottomContainerHeight),
            width: double.infinity,
            height: 80
          )
        ],

      )

    );
  }
}


