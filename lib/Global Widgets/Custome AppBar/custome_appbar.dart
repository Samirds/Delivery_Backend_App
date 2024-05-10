import 'package:firebaseauthpractice/Global%20Widgets/Reusable/app_style.dart';
import 'package:firebaseauthpractice/Global%20Widgets/Reusable/reusbale_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app properties/constants/constants.dart';

class CustomeAppbar extends StatelessWidget {
  const CustomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      color: Colors.white,
      child: Container(
        //color: Colors.white,
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(text: "Deliver To", style: appStyle(13, Colors.red, FontWeight.w600)),
                    SizedBox(
                      width: width * 0.65,
                      child: Text("Kolkata 7111000",
                        overflow: TextOverflow.ellipsis,
                        style: appStyle(11, Colors.black, FontWeight.w400),),
                    ),

                  ],
                ),),
                Text(getTimeOfDay(), style: TextStyle(fontSize: 33, color: Colors.white),)

              ],
            ),

          ],
        ),
      ),
    );
  }

  String getTimeOfDay(){
    DateTime now = DateTime.now();
    int hour = now.hour;

    if(hour >= 7 && hour < 12){
      return '🌞';
    }else if(hour >= 12 && hour < 16){
      return '🌥️';

    }else{
      return '🌙';
    }

  }
}
