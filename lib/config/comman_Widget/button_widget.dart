
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../color/const_color.dart';
import '../fontstyle/const_textStyle.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool? loading;

  const RoundButton({super.key, required this.title, required this.onTap, this.loading});

  @override
  Widget build(BuildContext context) {

    return InkWell(
        onTap: loading == true ? null : onTap,
        splashColor: Colors.white,
        child: Container(
          height: 0.0625.sh,
          decoration: BoxDecoration(
            color: ConstColor.primaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: loading == true
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : Text(
                    title,
                    style: ConstFontStyle().buttonTextStyle,
                  ),
          ),
        ),
      );
  }
}


class AppBarBackButton extends StatelessWidget {
  final VoidCallback onTap;

  const AppBarBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 8,bottom: 6,right: 6,left: 8),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white,
        child: Container(
          height: 0.005.sh,
          width:  0.6.sw,
          decoration: BoxDecoration(
            color: ConstColor.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: ConstColor.buttonBorderColor)
          ),
          child: const Center(
            child: Icon(Icons.arrow_back_ios_new,color: ConstColor.black,size: 20,),
          ),
        ),
      ),
    );
  }
}


class AppBarBackButtonOff extends StatelessWidget {
  final VoidCallback onTap;

  const AppBarBackButtonOff(
      {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.white,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 0.065.sh,
          width:  0.11.sw,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: ConstColor.white)
          ),
          child: const Center(
            child: Icon(Icons.arrow_back_ios_new,color: ConstColor.white,size: 23,),
          ),
        ),
      ),
    );
  }
}