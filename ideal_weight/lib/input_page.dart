import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ideal_weight/bottom_button.dart';
import 'package:ideal_weight/constants.dart';
import 'package:ideal_weight/icon_content.dart';
import 'package:ideal_weight/iwc_logic.dart';
import 'package:ideal_weight/result_page.dart';
import 'package:ideal_weight/reusable_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

 Color maleCardColor = const Color(0xff0c52323);
 Color femaleCardColor =  const Color(0xff0c52323);

 int height = 152;
 String gender = '?';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IBW CALCULATOR - Devine formula'.toUpperCase()),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Expanded(
                child:GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      maleCardColor = kActiveCardColor;
                      femaleCardColor = kInactiveCardColor;
                      gender = 'MALE';
                    });
                  },
                  child: ReusableCard(
                    maleCardColor, 
                    const IconContent(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
      ),
               Expanded(
                child: GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      femaleCardColor = kActiveCardColor;
                      maleCardColor = kInactiveCardColor;
                      gender = 'FEMALE';
                    });
                  },
                  child: ReusableCard(
                    femaleCardColor, 
                     const IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                ),
              ),
            ],
          )),
           Expanded(
            child: ReusableCard(
              kActiveCardColor, 
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('HEIGHT',
                  style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(), 
                        style: kButtonStyle,
                      ),
                      const Text(
                        'cm', 
                        style: kLabelTextStyle, 
                      ),
                    ],
                  ),
                  Slider(
                    min: 152.0,
                    max: 220.0,
                    inactiveColor: kInactiveCardColor,
                    activeColor: kBottomCardColor,
                  value: height.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      height = value.round();
                    });
                  },
                  ),
                ],
              ),
             ),
      ),
        BottomButton('CALCULATE', () {

          IwcLogic iwcLogic = IwcLogic(gender, height);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(
              iwcLogic.getIdealWeight(),
          )),
        );
       }),
        ],
      ),
    );
  }
}

























