import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: kTitleTextSize,
                  textAlign: TextAlign.center,
                )
              )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [Text(
                  'Normal',
                  style: kResultTextStyle,

                ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is low, you should eat more!',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )

                ],
              ) ,
            )
          ),
          BottomButton(
            buttonTitle: 'Re-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],

      )
    );
  }
}