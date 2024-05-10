import 'package:firebaseauthpractice/Global%20Widgets/Reusable/app_style.dart';
import 'package:firebaseauthpractice/Global%20Widgets/Reusable/reusbale_text.dart';
import 'package:firebaseauthpractice/app%20properties/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantWIdget extends StatelessWidget {
  final String image;
  final String logo;
  final String title;
  final String time;
  final String rating;
  final void Function()? onTap;

  const RestaurantWIdget({super.key, required this.image, required this.logo, required this.title, required this.time, required this.rating, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Padding(
          padding:  EdgeInsets.only(right: 12.w),
          child: Container(
            width: width * 0.75.w,
            height: 192.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
                  color: kLightWhite
            ),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        height: 112.h,
                          width: width * 0.8,
                        child: Image.network(image, fit: BoxFit.fitWidth,),
                      ),
                    ),
                    Positioned(
                      right: 10.w,
                        top: 10.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.r),
                          child: Container(
                            color: kLightWhite,
                            child: Padding(
                              padding: EdgeInsets.all(02.h),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.r),
                                child: Image.network(
                                  logo,
                                  fit: BoxFit.cover,
                                  width: 20.w,
                                  height: 20.h,),
                              ),
                            ),
                          ),
                        ))
                  ],
                ),),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(text: title, style: appStyle(12, kDark, FontWeight.w500)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(text: "Delivery Time", style: appStyle(9, kGray, FontWeight.w500)),
                        ReusableText(text: time, style: appStyle(9, kDark, FontWeight.w500))
                      ],
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: 5,
                          itemBuilder: (context, index) => Icon(Icons.star, color: kPrimary,),
                          itemCount: 5,
                          itemSize: 15.h,
                        ),
                        SizedBox(width: 10.w,),
                        ReusableText(text: "+ $rating + reviews and ratings", style: appStyle(12, kDark, FontWeight.w500))

                      ],
                    )


                  ],
                ),)
              ],
            ),
          ),
        ));
  }
}
