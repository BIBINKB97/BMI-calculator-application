import 'package:flutter/material.dart';

class WeightAndAgeCard extends StatelessWidget {
  final String title;
  final String weight;
  const WeightAndAgeCard({
    super.key,
    required this.title,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            weight,
            style: TextStyle(fontSize: 55, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightGreen),
                child: Center(child: Icon(Icons.minimize)),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightGreen),
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
