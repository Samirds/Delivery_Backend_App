import 'package:firebaseauthpractice/Global%20Widgets/Reusable/app_style.dart';
import 'package:firebaseauthpractice/Global%20Widgets/Reusable/reusbale_text.dart';
import 'package:firebaseauthpractice/app%20properties/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text:"AllFastestFoods",
          style: appStyle(13, kGray, FontWeight.w600),)
      ),
      body: Center(
        child: Text("All AllFastestFoods"),
      ),
    );
  }
}
