import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotFoundPage extends GetResponsiveView{
  static const routeName = '/404';
  @override
  Widget desktop(){
    return const Scaffold(
      body: Center(
        child: Text("404 - Not Found", style: TextStyle(
          fontSize: 64,
        )),
      ),
    );
  }
}