import 'package:flutter/material.dart';

class FoodCategorics extends StatelessWidget {
  FoodCategorics(
      {required this.Categori_name, required this.Categori_image, Key? key})
      : super(key: key);

  String Categori_name;
  String Categori_image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            maxRadius: 30,
            backgroundImage: AssetImage("${Categori_image}"),
          ),
          Text("${Categori_name}")
        ],
      ),
    );
  }
}
