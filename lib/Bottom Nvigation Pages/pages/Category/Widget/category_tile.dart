import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Global Widgets/Reusable/app_style.dart';
import '../../../../Global Widgets/Reusable/reusbale_text.dart';
import '../../../../app properties/constants/constants.dart';
import '../category_page.dart';

Widget CategoryTile(category){
  return ListTile(
    onTap: (){
      Get.to(() => CategoryPage(),
          transition: Transition.fadeIn,
          duration: Duration(milliseconds: 900));
    },
    leading: CircleAvatar(
      radius: 18.r,
      backgroundColor: kGrayLight,
      child: Image.network(category["imageUrl"], fit: BoxFit.contain,),),
    title: ReusableText(text: category['title'],style: appStyle(12, kGray, FontWeight.normal),),
    trailing: Icon(Icons.arrow_forward_ios_outlined, color: kGray, size: 15.r,),
  );
}