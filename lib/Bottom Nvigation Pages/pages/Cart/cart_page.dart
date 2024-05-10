import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Helping Pages/Custome Widgets/custome_container.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: PreferredSize(preferredSize: Size.fromHeight(130.h),
          child: Container(height: 130.h,),),
        body: SafeArea(
          child: CustomeContainer(containerContent: Container()),
        )
    );
  }
}
