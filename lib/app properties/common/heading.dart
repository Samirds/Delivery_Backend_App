import 'package:firebaseauthpractice/Global%20Widgets/Reusable/app_style.dart';
import 'package:firebaseauthpractice/Global%20Widgets/Reusable/reusbale_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import '../constants/constants.dart';

class Heading extends StatelessWidget {

  final String text;
  final void Function()? onTap;

  Heading({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.only(top: 10.h),
          child: ReusableText(
            text: text, style: appStyle(16, kDark, FontWeight.bold),
          ),),
          GestureDetector(
            onTap: onTap,
              child: Icon(
                CupertinoIcons.slider_horizontal_below_rectangle,
                color: kSecondary,
                size: 20.sp,))


        ],
      ),
    );
  }
}
