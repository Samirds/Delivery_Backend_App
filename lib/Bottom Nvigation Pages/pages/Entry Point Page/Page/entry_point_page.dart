
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Cart/cart_page.dart';
import '../../Home/home_page.dart';
import '../../Profile/profile_page.dart';
import '../../Search/search_page.dart';
import '../Getx_/entry_point_page_controller.dart';

class EntryPointPage extends StatelessWidget {
  EntryPointPage({super.key});


  List<Widget> PageList = [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    EntPPageCntrlr controller = Get.find();
    return Scaffold(
      body: GetBuilder<EntPPageCntrlr>(builder: (_){
        return Stack(
          children: [
            PageList[controller.btmNvigationIndex],
            Align(
                alignment: Alignment.bottomCenter,
                child: Theme(data: Theme.of(context).copyWith(canvasColor: Colors.grey),
                  child: BottomNavigationBar(
                      showSelectedLabels: true,
                      unselectedIconTheme: const IconThemeData(color: Colors.black),
                      onTap: (value){
                        controller.setBtmNgIndexValue = value;
                        print(value);
                      },
                      currentIndex: controller.btmNvigationIndex,
                      items: [
                        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
                        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
                        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
                      ]
                  ),
                )
            )
          ],
        );
      },),
    );
  }
}
