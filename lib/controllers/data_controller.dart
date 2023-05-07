import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/services/service.dart';
import 'package:get/get.dart';

class DataController extends GetxController{
  DataService service = DataService();
  bool isLoading = false;
  bool get isloading => isLoading;
  List<dynamic> _myData = [];
  List<dynamic> get mydata => _myData; 
  Future<void> getData() async {
    isLoading = true; 
    Response response = await service.getData();
    if(response.statusCode == 200){
      _myData = response.body;
      // ignore: avoid_print
      print("We got the data");
    }else{
      // ignore: avoid_print
      print("We did not get the data"); 
     
    }

  }

  Future<void> postData(String task , String taskDetail) async {
    isLoading = true; 
    Response response = await service.postData({
      "task": task,
      "taskDetail": taskDetail,
    });

    if(response.statusCode == 200){
      _myData = response.body;
      // ignore: avoid_print
      print("We got the data");
    }else{
      // ignore: avoid_print
      print("We did not get the data"); 
     
    }
    
  }
}