import 'package:flutter/material.dart';

class MyScroll extends StatelessWidget {
  MyScroll({required this.Scroll_color, Key? key}) : super(key: key);

  Color Scroll_color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: 18,
      decoration: BoxDecoration(
          color: Scroll_color, borderRadius: BorderRadius.circular(8)),
    );
  }
}
