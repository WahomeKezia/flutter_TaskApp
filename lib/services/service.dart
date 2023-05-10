import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataService extends GetConnect implements GetxService {
  Future<Response> getData() async {
    Response response = await get(
      'http://localhost:8080/gettasks',

      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        
        },
    );
    return response;
  }

    Future<Response> postData(dynamic body) async {
    Response response = await post(
      'http://localhost:8080/',
      body,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        
        },
    );
    return response;
  }
}
