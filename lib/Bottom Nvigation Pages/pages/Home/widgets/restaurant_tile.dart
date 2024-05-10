import 'package:firebaseauthpractice/Global%20Widgets/Reusable/app_style.dart';
import 'package:firebaseauthpractice/Global%20Widgets/Reusable/reusbale_text.dart';
import 'package:firebaseauthpractice/app%20properties/constants/constants.dart';
import 'package:firebaseauthpractice/app%20properties/constants/uidata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantTile extends StatelessWidget {

  final dynamic restaurant;

  const RestaurantTile({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h) ,
            height: 70.h,
            width: width,
            decoration: BoxDecoration(
              color: kOffWhite,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12.r),),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 70.w,
                          height: 70.h,
                          child: Image.network(restaurant["imageUrl"], fit: BoxFit.cover,),
                        ),
                        Positioned(bottom: 0,
                            child: Container(
                              padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                              color: kGray.withOpacity(0.6),
                              height: 16.h,
                              width: width,
                              child: RatingBarIndicator(
                                rating: 5,
                                itemCount: 5,
                                itemBuilder: (context, i) => Icon(Icons.star, color: kSecondary,),
                              ),
                            ))
                      ],
                    )
                    ,
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                          text: restaurant['title'],
                          style: appStyle(11, kDark, FontWeight.w400)),

                      ReusableText(
                          text: "Delivery Time : ${restaurant["time"]}",
                          style: appStyle(11, kGray, FontWeight.w400)),

                      SizedBox(
                        width: width * 0.65,
                          child: Text(
                            restaurant['coords']['address'],
                            style: appStyle(9, kGray, FontWeight.w400),
                          overflow: TextOverflow.ellipsis,),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 5.w,
              top: 6.h,
              child: Container(
                width: 60.w,
                height: 19.h,
                decoration: BoxDecoration(
                  color: restaurant['isAvailable'] ==true ||
                      restaurant['isAvailable'] == null? kPrimary : kSecondaryLight,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: ReusableText(
                    text: restaurant['isAvailable'] ==true ||
                        restaurant['isAvailable'] == null? "Open" : "Close",
                      style: appStyle(12, kLightWhite, FontWeight.w600),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
