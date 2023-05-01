import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetResponsiveView{
  static const routeName = '/home';
  @override
  Widget desktop(){
    return const Scaffold(
      body: Center(
        child: Text("HomePage", style: TextStyle(
          fontSize: 64
        )),
      ),
    );
  }
}