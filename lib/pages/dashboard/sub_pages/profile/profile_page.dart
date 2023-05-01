import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetResponsiveView{
  static const routeName = '/profile';
  @override
  Widget desktop(){
    return const Scaffold(
      body: Center(
        child: Text("Profile Page", style: TextStyle(
            fontSize: 64
        )),
      ),
    );
  }
}