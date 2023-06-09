import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_golang_yt/screens/add_task.dart';
import 'package:flutter_golang_yt/screens/all_tasks.dart';
import 'package:flutter_golang_yt/utils/app_colors.dart';
import 'package:flutter_golang_yt/widgets/button_widget.dart';
import 'package:get/get.dart';

class HomeScreenState extends StatefulWidget {
  const HomeScreenState({Key? key}) : super(key: key);

  @override
  State<HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding:const EdgeInsets.only(left: 20 , right: 20) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "Hello",
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor
                ),
            children: [
              TextSpan(
                text: "\nThis is the best day to start your day ",
                style: TextStyle(
                  fontSize: 14,
                
                  color: AppColors.smallTextColor,
                )
              )
            ]
              )
            ),
            SizedBox(height: MediaQuery.of(context).size.height/2.5,),
          InkWell(
            onTap: (){
              Get.to(()=>const AddTask(), transition: Transition.zoom , duration: const Duration(milliseconds: 500));
            },
            child: ButtonWidget(backgroundcolor: AppColors.mainColor, 
            text: "Add task", 
            textColor: Colors.white), 
        ),
            const SizedBox(height: 20,), 
            InkWell(
              onTap: (){
                Get.to(()=>const AllTasks(), transition: Transition.fade , duration: const Duration(seconds:1));
              },
              child:
            ButtonWidget(backgroundcolor: Colors.white, 
            text: "View all", 
            textColor: AppColors.smallTextColor), 
            )  
        ],),
        decoration:const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/welcome.jpg"),
          fit: BoxFit.cover,
        ),
        
      )

    )
    );
  }
}