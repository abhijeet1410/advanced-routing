import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExplorePage extends GetResponsiveView{
  static const routeName = '/explore';
  @override
  Widget desktop(){
    return const Scaffold(
      body: Center(
        child: Text("ExplorePage", style: TextStyle(
            fontSize: 64
        )),
      ),
    );
  }
}