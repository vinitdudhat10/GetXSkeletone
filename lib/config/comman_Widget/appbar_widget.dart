
import 'package:flutter/material.dart';
import '../color/const_color.dart';
import '../fontstyle/const_textStyle.dart';
import 'button_widget.dart';

class ConstAppBar extends StatelessWidget {
  String? title;
  final VoidCallback onTap;

  ConstAppBar({required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ConstColor.primaryColor,
      centerTitle: true,
      title: Text(title!,style: ConstFontStyle().appbarWhite),
      leading: AppBarBackButtonOff(onTap: onTap),
      shape: const RoundedRectangleBorder (
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))
      ),
    );
  }
}

class WithOutBtnAppBar extends StatelessWidget {
  String? title;

  WithOutBtnAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ConstColor.primaryColor,
      centerTitle: true,
      title: Text(title!,style: ConstFontStyle().appbarWhite),
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder (
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  String? title;
  final VoidCallback onTap;

  HomeAppBar({required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ConstColor.primaryColor,
      centerTitle: true,
      title: Text(title!,style: ConstFontStyle().appbarWhite),
      leading: AppBarBackButtonOff(onTap: onTap),
      shape: const RoundedRectangleBorder (
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16))
      ),
    );
  }
}
