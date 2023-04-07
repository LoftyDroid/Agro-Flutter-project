import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modernlogintute/constants/colors.dart';

class NavbarController extends GetxController {
  var index = 0.obs;

  void changeIndex(int index) {
    this.index.value = index;
  }

  Color changeColor(int index) {
    return (this.index.value == index) ? primaryGreen : grey;
  }
}
