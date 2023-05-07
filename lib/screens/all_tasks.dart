import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_golang_yt/utils/app_colors.dart';
import 'package:flutter_golang_yt/widgets/button_widget.dart';
import 'package:flutter_golang_yt/widgets/task_widget.dart';
import 'package:get/get.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      List myData =[
      "Try Harder",
      "Try Smarter",
      "Stay Focused",
      "Stay Positive",
      "Stay Strong",
      "Stay Motivated",
    ];
    final leftEditIcon = Container(
    margin: const EdgeInsets.only(bottom: 10),
    color: Color.fromARGB(255, 50, 50, 92),
    child: const Icon(
      Icons.edit,
      color: Colors.white,),
      alignment: Alignment.centerLeft,
      
    );
      final rightDeletionIcon = Container(
    margin: const EdgeInsets.only(bottom: 10),
    color: Colors.redAccent,
    child: const Icon(
      Icons.delete,
      color: Colors.white,),
      alignment: Alignment.centerRight,
      
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [ 
         Container(
            padding: const EdgeInsets.only(left: 20 , top: 60),
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: (){
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios_new, color: AppColors.secondaryColor),
            ),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height/3.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/header1.jpg")
              )
            ),
          ),
         Container(
          padding: const EdgeInsets.only(left: 20 , right: 20),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home, color: AppColors.secondaryColor,) ,
              const SizedBox(width: 10,),
              Container(
                child: Icon(Icons.add, color: AppColors.secondaryColor,) ,
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.5)),
                  color: Colors.black
                ),
              ),
              Expanded(child:Container()),
              Icon(Icons.calendar_month_sharp, color: AppColors.secondaryColor,) ,

              const SizedBox(width: 10,),
              const Text("2" , style: TextStyle(
                fontSize:20,
              // color: AppColors.secondaryColor

                 ),)
            ]
                ),),
              
  Flexible(        
  child:ListView.builder(
      itemCount: myData.length,
      itemBuilder: (context , index){
      return Dismissible(
        secondaryBackground: rightDeletionIcon,
        background:leftEditIcon,
        onDismissed:(DismissDirection direction){
        } ,
        confirmDismiss: (DismissDirection direction) async{
        if(direction == DismissDirection.startToEnd){
         showModalBottomSheet(
          context: context,
          barrierColor: Colors.transparent,
          backgroundColor: Colors.transparent,
           builder: (_){
            return Container(
              height: 550, 
              decoration:  BoxDecoration(
                color: const Color.fromARGB(255, 29, 35, 59).withOpacity(0.4),
                borderRadius: const BorderRadius.only(
                  topRight:Radius.circular(20) ,
                  topLeft:Radius.circular(20) 
                )
              ),
              child: Padding( 
                padding: const EdgeInsets.only(left: 20 , right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                ButtonWidget(backgroundcolor: AppColors.mainColor, text: "view", textColor: Colors.white,),
                const SizedBox(height: 20,),
                ButtonWidget(backgroundcolor: AppColors.mainColor, text: "Edit", textColor: Colors.white,),
                ]),
            ),);
         
           });
         }
           
        else{
          
          return Future.delayed(Duration(seconds:2),()=> direction==DismissDirection.endToStart);
        }
        },
        key: ObjectKey(index),
        child :Container(
        margin: const EdgeInsets.only(left: 20 , right: 20 , bottom: 10),
        child: TaskWidget(
          text: myData[index],
          color: Colors.blueGrey,
        ),
      ),
      );
      
      
    },)
      )
    ]),
      );
  }
} 


//return await showDialog(
//               context: context,
//               builder: (BuildContext context){
//                 return AlertDialog(
//                   title: const Text("Are you sure?"),
//                   content: const Text("Do you want to delete this task?"),
//                   actions: [
//                     TextButton(
//                       onPressed: (){
//                         Navigator.of(context).pop(true);
//                       }, 
//                       child: const Text("Delete")
//                       ),
//                       TextButton(
//                       onPressed: (){
//                         Navigator.of(context).pop(false);
//                       }, 
//                       child: const Text("Cancel")
//                       ),
//                   ],
//                 );
//               }
//             );
//         } 