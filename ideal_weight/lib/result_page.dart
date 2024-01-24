import 'package:flutter/material.dart';
import 'package:ideal_weight/bottom_button.dart';
import 'package:ideal_weight/constants.dart';
import 'package:ideal_weight/reusable_card.dart';

class ResultPage extends StatelessWidget {
   final String idealWeight;

  const ResultPage( this.idealWeight, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IDEAL WEIGHT CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'YOUR RESULT', 
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
              ),
            ),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
              kActiveCardColor,
               Center(
                child: Text(
                  idealWeight,
                  style: const TextStyle(
                    fontSize: 100.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ),
             BottomButton('RE-CALCULATE', () => Navigator.pop(context)),
        ],
      ),
    );
  }
}