import 'package:flutter/cupertino.dart';

class ReusableText extends StatelessWidget {

  final String text;
  final TextStyle style;

  const ReusableText({super.key, required this.text, required this.style});



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      softWrap: false,
      textAlign: TextAlign.left,
      style: style,
    );
  }
}
