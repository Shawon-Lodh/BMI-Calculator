import 'package:bmi_calculator/constants.dart';
import 'file:///E:/Education/4.2/android_with_flutter/The_Complete_2021_Flutter_Development_Bootcamp_Dart/test/bmi-calculator-flutter/lib/components/reuseable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String BMIResult;
  final String resultText;
  final String interpretation;

  ResultPage({@required this.BMIResult,@required this.resultText,@required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              backColor: kActiveCardColor,
              cardChild: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    BMIResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    "Normal BMI range",
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                  Text(
                    "18.5 - 25 kg/m^2",
                    style: kBodyTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE YOUR BMI',
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // Expanded(child: child),
        ],
      ),
    );
  }
}
