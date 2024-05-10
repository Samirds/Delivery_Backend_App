import 'package:firebaseauthpractice/app%20properties/common/values/app_dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app properties/constants/constants.dart';

class CustomeContainer extends StatelessWidget {

  Widget containerContent;
  CustomeContainer({super.key, required this.containerContent});


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*0.75,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.r),
          bottomRight: Radius.circular(30.r),
        ),
        child: Container(
          width: width,
          //color: Colors.red,
          child: SingleChildScrollView(
            child: containerContent,
          )
          ,

        ),
      ),
    );
  }
}
