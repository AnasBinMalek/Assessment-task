import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class PopularFoodDesign extends StatelessWidget {
  PopularFoodDesign(
      {required this.Categori_name,
      required this.Food_name,
      required this.Food_image,
      required this.Food_price,
      required this.Food_discount_price,
      required this.favorite,
      Key? key})
      : super(key: key);

  String Food_name, Food_image, Categori_name;
  double rating = 3.6;
  double Food_price, Food_discount_price;
  bool favorite;
  String discount = "-54%";

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
                    "${Food_image}",
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
                          "${discount}",
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
                        "${Categori_name}",
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
                    "${Food_name}",
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${Food_discount_price}",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      RichText(
                        text: new TextSpan(
                          children: <TextSpan>[
                            new TextSpan(
                              text: '\$${Food_price}',
                              style: new TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
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
