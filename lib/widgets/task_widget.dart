import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TaskWidget extends StatelessWidget {
  final String text;
  final Color color;
  const TaskWidget({Key? key, required this.text, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.maxFinite,
    height: MediaQuery.of(context).size.height/14,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 242, 241, 244),
      borderRadius: BorderRadius.circular(0)
    ),
    child: Center(
      child: Text(text , 
      style: TextStyle(
        color: color,
        fontSize: 20,
      )
      )
    ),
    
    );
  }
}