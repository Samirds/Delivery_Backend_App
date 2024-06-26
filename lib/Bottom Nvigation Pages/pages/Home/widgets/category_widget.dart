import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Global Widgets/Reusable/app_style.dart';
import '../../../../Global Widgets/Reusable/reusbale_text.dart';
import '../../../../app properties/constants/constants.dart';
import '../../Category/all_categories.dart';

Widget CategoryWidget(controller, category){
  return GestureDetector(
    onTap: (){
      if(controller.categoryValue == category['_id']){
        controller.updateCategory = '';
        controller.updateTitle = "";
      }else if(category['value'] == "more"){
        Get.to(() => AllCategories(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 900));

      }else{
        controller.updateCategory = category["_id"];
        controller.updateTitle = category['title'];
      }

    },
    child: Obx(() => Container(
      margin: EdgeInsets.only(right: 5.w),
      padding: EdgeInsets.only(top: 4.h),
      width: width*0.19,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: controller.categoryValue == category["_id"]?kSecondary : kOffWhite, width: 0.5.w)
      ),
      child: Column(
        children: [
          SizedBox(
            height: 35.h,
            child: Image.network(category['imageUrl'], fit: BoxFit.contain,),
          ),
          ReusableText(text: category['title'], style: appStyle(12, kDark, FontWeight.normal))
        ],
      ),
    )),
  );

}