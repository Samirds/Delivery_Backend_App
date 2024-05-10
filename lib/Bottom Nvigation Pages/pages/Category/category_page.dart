import 'package:firebaseauthpractice/app%20properties/constants/constants.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: Text("Category Page"),
      ),
      body: Center(
        child: Text("New Page"),
      ),
    );
  }
}
