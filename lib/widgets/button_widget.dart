import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundcolor;
  final String text;
  final Color textColor;

  const ButtonWidget({Key? key,
   required this.backgroundcolor , 
   required this.text ,
   required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height/14,
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(40)
      ),
      child:Center(
      child:Text(text , style: TextStyle(
        color: textColor,
        fontSize: 24,
      )
      )
      ),
    );
  }
}