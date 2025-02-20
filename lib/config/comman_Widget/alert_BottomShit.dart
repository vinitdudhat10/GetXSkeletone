import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../color/const_color.dart';
import '../fontstyle/const_textStyle.dart';

class AlertBottomShit {
  void showBottomShit(
      context, String image, String title, String btnText, VoidCallback onTap) {
    showModalBottomSheet<void>(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        backgroundColor: ConstColor.white,
        builder: (BuildContext context) {
          return FractionallySizedBox(
              heightFactor: 0.38,
              child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.03.sw,
                    vertical: 0.02.sh,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: ConstColor.alertColor,
                        child: SvgPicture.asset(image),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.015.sh),
                        child: Text(
                          title,
                          style: ConstFontStyle().textTitle6,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 0.02.sh, right: 0.015.sw, left: 0.015.sw),
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          radius: 16,
                          splashColor: Colors.white,
                          child: Container(
                            height: 0.065.sh,
                            decoration: BoxDecoration(
                              color: ConstColor.alertColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style: ConstFontStyle()
                                    .buttonTextStyle
                                    .copyWith(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 0.015.sh, right: 0.015.sw, left: 0.015.sw),
                        child: InkWell(
                          onTap: onTap,
                          radius: 16,
                          splashColor: Colors.white,
                          child: Container(
                            height: 0.065.sh,
                            decoration: BoxDecoration(
                                color: ConstColor.white,
                                borderRadius: BorderRadius.circular(16),
                                border:
                                    Border.all(color: ConstColor.alertColor)),
                            child: Center(
                              child: Text(
                                btnText,
                                style: ConstFontStyle()
                                    .buttonTextStyle
                                    .copyWith(
                                        color: ConstColor.alertColor,
                                        fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )));
        });
  }
}
