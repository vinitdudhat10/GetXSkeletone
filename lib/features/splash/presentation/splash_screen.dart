

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skeletone/config/fontstyle/const_textStyle.dart';

import '../../authentication/presentation/page/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("SPLASH",style: ConstFontStyle().mainTitleBig,),
      ),
    );
  }
  Future<Future?> checkPref() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.getBool("login") == true) {
      return null/*Get.offAll(() => BottomBarScreen(), arguments: {bottomBarController.currentIndex = 0},)*/;
    } else {
      return  Get.offAll(() => const LoginScreen());
    }
  }
}
