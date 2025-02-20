
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../color/const_color.dart';
import '../fontstyle/const_textStyle.dart';

class Utils {
  void toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.redAccent,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  /*void snackBar(String title, String message) {
    Get.snackbar(title, message,
        reverseAnimationCurve: Curves.bounceIn,
        forwardAnimationCurve: Curves.bounceInOut,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 3),
        colorText: ConstColor.primaryColor,
        backgroundColor: ConstColor.white);
  }*/

  void errorSnackBar(String title, String message) {
    Get.snackbar(title, message,
        reverseAnimationCurve: Curves.bounceIn,
        forwardAnimationCurve: Curves.bounceInOut,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
        colorText: Colors.white,
        backgroundColor: ConstColor.alertColor);
  }

  void snackBar(BuildContext context,{String title = '', required String message}){
    Get.snackbar('',
      '',
      titleText: Text(message, style: ConstFontStyle().buttonTextStyle.copyWith(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 0.02.sh),),
      messageText: Container(),
      colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM,
      // animationDuration: Duration(seconds: 1),
      backgroundColor: ConstColor.black,
      padding: const EdgeInsets.all(10),
      borderRadius: 5,
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20,top: 25),
      duration: const Duration(milliseconds: 1000),
    );
  }

}
