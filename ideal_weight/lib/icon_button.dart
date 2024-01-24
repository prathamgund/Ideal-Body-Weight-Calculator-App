import 'package:flutter/material.dart';

class IconButton extends StatelessWidget {

  final IconData icon;
  final Function() onpress;
  const IconButton(
     this.icon,
     this.onpress,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      elevation: 3.0,
      constraints: const BoxConstraints(minWidth: 40.0, minHeight: 40.0),
      fillColor: const Color(0xff0dad4b5),
      padding: const EdgeInsets.all(14.0),
      shape: const CircleBorder(),
      child: Icon(
        icon, color:const Color(0xFFA73121),
        ),
    );
  }
}