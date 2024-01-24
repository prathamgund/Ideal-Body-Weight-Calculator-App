import 'package:flutter/material.dart';
import 'package:ideal_weight/constants.dart';

class IconContent extends StatelessWidget {

  final String label;
  final IconData icon;

  const IconContent(
    this.icon, 
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon, 
        color: Colors.white, 
        size: 90.0,
        ),
        const SizedBox(
          height: 18.0,
        ),
           Text(
          label, style: kLabelTextStyle),
      ],
    );
  }
}