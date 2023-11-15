// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/config/constants.dart';
import 'package:bmi_calculator/view/results.dart';
import 'package:bmi_calculator/view/widgets/custom_button.dart';
import 'package:bmi_calculator/view/widgets/submit_button.dart';
import 'package:bmi_calculator/view/widgets/custom_card.dart';
import 'package:bmi_calculator/view/widgets/theme_changer_btn.dart';
import 'package:flutter/material.dart';
import 'widgets/icon_content.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? selectedGender;
  int height = 175;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI calculator',
          style: TextStyle(
              fontSize: 25, letterSpacing: 1, fontWeight: FontWeight.w800),
        ),
        actions: [
          ThemeChangeBtn(),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cusColor: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      customCardChild:
                          IconContent(icon: Icons.male_rounded, label: 'MALE')),
                ),
                Expanded(
                  child: CustomCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cusColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    customCardChild: IconContent(
                        icon: Icons.female_rounded, label: 'FEMALE'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              cusColor: kActiveCardColor,
              customCardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor:
                          const Color.fromARGB(255, 249, 243, 243),
                      inactiveTrackColor: Color.fromARGB(255, 204, 206, 227),
                      overlayColor: Color(0x15EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 20.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color.fromARGB(255, 191, 176, 255),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round(); // enable the slide
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    cusColor: kActiveCardColor,
                    customCardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            CustomButton(
                              icon: Icons.minimize,
                              onPressed: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    cusColor: kActiveCardColor,
                    customCardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  if (age < 100) {
                                    age++;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            CustomButton(
                              icon: Icons.minimize,
                              onPressed: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SubmitButton(
            buttonTitle: 'Calculate',
            onTap: () {
              Calculator calc = Calculator(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            bmiResult: calc.calculateBMI().toString(),
                            resultText: calc.getResult(),
                            interpretation: calc.getInterpretation(),
                          )));
            },
          ),
        ],
      ),
    );
  }
}
