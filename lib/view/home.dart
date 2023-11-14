import 'package:bmi_calculator/view/widgets/custon_card.dart';
import 'package:bmi_calculator/view/widgets/theme_changer_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        children: [
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
                        ? Colors.black
                        : Colors.grey,
                    customCardChild: IconContent
                    (FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cusColor: selectedGender == Gender.female
                        ? Colors.black
                        : Colors.grey,
                    customCardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
