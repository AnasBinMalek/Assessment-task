import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class PopularRestaurantModel extends StatelessWidget {
  PopularRestaurantModel(
      {required this.name,
      required this.location,
      required this.image,
      required this.item,
      required this.favorite,
      Key? key})
      : super(key: key);

  String name, location, image;
  int item, discount = 54;
  bool favorite;
  double rating = 3.6;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      height: 300,
      width: 280,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    "${image}",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: FavoriteButton(
                          iconSize: 40,
                          isFavorite: favorite,
                          // iconDisabledColor: Colors.white,
                          valueChanged: (_isFavorite) {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "-${discount}%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "${location}",
                        style: TextStyle(fontSize: 22, color: Colors.black45),
                      ),
                    ),
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
                            "${rating}",
                            style:
                                TextStyle(fontSize: 22, color: Colors.black87),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "$name",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 50,
                    width: double.infinity,
                    child: Text(
                      '$item Item',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
