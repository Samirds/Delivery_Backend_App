import 'package:firebaseauthpractice/Controllers/category_controller.dart';
import 'package:firebaseauthpractice/app%20properties/constants/uidata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'category_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Container(
      height: 75.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:
          List.generate(categories.length, (i) {
            var category = categories[i];
            return CategoryWidget(controller, category);
          }
          ),
      ),
    );
  }


}

