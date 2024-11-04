import 'package:flutter/material.dart';

class ScreenSize{
  final BuildContext context;

  ScreenSize(this.context);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;

  double heightPercentage(double percentage){
    return height * percentage / 100;
  }
  double widthPercentage(double percentage){
    return width * percentage / 100;
  }
}