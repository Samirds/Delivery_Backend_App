import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Global Widgets/Reusable/app_style.dart';
import '../../../Global Widgets/Reusable/reusbale_text.dart';
import '../../../app properties/constants/constants.dart';

class AllNearByRestaurents extends StatelessWidget {
  const AllNearByRestaurents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: ReusableText(
        text:"All Nearby Restaurants",
        style: appStyle(13, kGray, FontWeight.w600),)
      ),
      body: Center(
        child: Text("All NearBy Resturents"),
      ),
    );
  }
}
