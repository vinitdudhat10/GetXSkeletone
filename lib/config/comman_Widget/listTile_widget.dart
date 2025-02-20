
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/const_color.dart';
import '../fontstyle/const_textStyle.dart';


class ConstListTile extends StatelessWidget {
  final VoidCallback onTap;
  String title;
  ConstListTile(
      {super.key,required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: ConstColor.buttonHoverColor,
      onTap: onTap,
      radius: 16,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 0.07.sh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: ConstColor.borderColor
              )
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.03.sw),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0.01.sw),
                  child: Text(title,style: ConstFontStyle().textTitle3.copyWith(fontSize: 14)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffE6E6E6),
                    borderRadius: BorderRadius.circular(51),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.arrow_forward_ios_rounded,color: ConstColor.black,size: 18,),
                  ),
                ),
              ],
            ),
          )

          /*ListTile(
            splashColor: ConstColor.buttonHoverColor,
            onTap: onTap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                  color: ConstColor.borderColor
              ),
            ),
            title: Text("   "+title,style: ConstFontStyle().textTitle3.copyWith(fontSize: 14)),
            trailing: Container(
              decoration: BoxDecoration(
                color: Color(0xffE6E6E6),
                borderRadius: BorderRadius.circular(51),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(Icons.arrow_forward_ios_rounded,color: ConstColor.black,size: 18,),
              ),
            ),
          ),*/
        ),
      ),
    );
  }
}