import 'package:flutter/material.dart';
import 'package:ideal_weight/constants.dart';

class BottomButton extends StatelessWidget {

  final String label;
  final Function() onpress;
   
  const BottomButton(
     this.label, 
       this.onpress, { 
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 65.0,
        width: double.infinity,
        color: kBottomCardColor,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Color(0xff0c52323),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
      ),
    );
  }
}
