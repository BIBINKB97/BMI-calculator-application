import 'package:bmi_calculator/view/widgets/theme_changer_btn.dart';
import 'package:bmi_calculator/view/widgets/weight_and_age_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          ThemeChangeBtn(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'welcome',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  'BMI calculator',
                  style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Text('Male')),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Text('Female')),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 170,
                height: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                    child: Column(
                  children: [
                    Text('height'),
                    Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(3.14159 / 2),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 150.0),
                          child: LinearProgressIndicator(
                            minHeight: 25,
                            backgroundColor: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        )),
                  ],
                )),
              ),
              Column(
                children: [
                  WeightAndAgeCard(title: 'weight', weight: "70"),
                  SizedBox(
                    height: 20,
                  ),
                  WeightAndAgeCard(title: 'Age', weight: "20"),
                ],
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text('Lets go')),
          ),
        ],
      ),
    );
  }
}
