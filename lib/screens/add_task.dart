import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_golang_yt/utils/app_colors.dart';
class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body:Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20 , right: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/addtask.jpg"),  
          )
        ),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
             children:[
              const SizedBox(height: 60,),
              IconButton(onPressed: (){} ,
               icon: Icon(Icons.arrow_back_ios_new , 
              color: AppColors.secondaryColor,))
            ]),
        Column(
          children: [
            TextField(
             maxLines: 1,
             controller: nameController , 
             decoration: InputDecoration (
               filled: true,
                fillColor: AppColors.textHolder,
                hintText: "Task name",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1
                  )
                ),
            )
             )
               
          ],
        ),
        SizedBox( 
          height: MediaQuery.of(context).size.height/3,
        )
       
        ])

    )
    );
  }
}