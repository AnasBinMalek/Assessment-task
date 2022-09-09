import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class ChipRatesModel extends StatelessWidget {
  ChipRatesModel(
      {required this.name,
      required this.location,
      required this.image,
      required this.item,
      required this.favorite,
      Key? key})
      : super(key: key);

  String name, location, image;
  bool favorite;
  int item;
  double rating = 3.6;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      height: 150,
      width: 300,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: Image.asset(
                    "$image",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: FavoriteButton(
                    iconSize: 40,
                    isFavorite: favorite,
                    valueChanged: (_isFavorite) {},
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    StarButton(
                      iconSize: 40,
                      iconColor: Colors.red,
                      isStarred: true,
                      valueChanged: (_isStarred) {},
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        "$rating",
                        style: TextStyle(fontSize: 22, color: Colors.black87),
                      ),
                    )
                  ],
                ),
                Text(
                  "$location",
                  style: TextStyle(fontSize: 22, color: Colors.black45),
                ),
                Text(
                  "$name",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$item Itam",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      InkWell(
                        child: Container(
                          width: 50,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                              color: Colors.red),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 35,
                          )),
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
