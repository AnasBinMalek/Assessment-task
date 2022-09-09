import 'package:flutter/material.dart';

class HotDealsDesign extends StatelessWidget {
  HotDealsDesign(
      {required this.discout,
      required this.field_color,
      required this.image,
      Key? key})
      : super(key: key);

  String image;
  Color field_color;
  int discout;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: field_color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15, bottom: 5, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hot Deals",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Up to -${discout}% off",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21),
                  ),
                  InkWell(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          Expanded(
            child: CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage("${image}"),
            ),
            flex: 5,
          ),
        ],
      ),
    );
  }
}
