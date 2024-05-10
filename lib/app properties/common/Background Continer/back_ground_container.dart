import 'package:firebaseauthpractice/app%20properties/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackGroundContainer extends StatelessWidget {

  final Widget child;
  final Color color;

  const BackGroundContainer({super.key, required this.child, required this.color});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        image: DecorationImage(
          image: AssetImage("assets/images/restaurant_bk.png"),
              fit: BoxFit.cover,
          opacity: 0.7,
        )
      ),
      child: child,
    );
  }
}
