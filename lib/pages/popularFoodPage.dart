import 'package:flutter/material.dart';
import 'package:testproject/Home_Page.dart';
import 'package:testproject/List/popularFood.dart';
import 'package:favorite_button/favorite_button.dart';

class PopularFood extends StatefulWidget {
  const PopularFood({Key? key}) : super(key: key);

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Popular Food",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: BackButton(
              color: Colors.black87,
              onPressed: (() {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
              }),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Color.fromARGB(
          255,
          245,
          221,
          221,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 2.5,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: popularFoodList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(
                          255,
                          245,
                          221,
                          221,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Stack(
                              children: [
                                Image.asset(
                                  popularFoodList[index]["image"],
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  height: 30,
                                  width: double.infinity,
                                  margin: EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: FavoriteButton(
                                          iconSize: 30,
                                          isFavorite: popularFoodList[index]
                                              ['favorite'],
                                          valueChanged: (_isFavorite) {},
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Center(
                                              child: Text(
                                            popularFoodList[index]
                                                ['discount percent'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      popularFoodList[index]['categori'],
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black45),
                                    ),
                                    Row(
                                      children: [
                                        StarButton(
                                          iconSize: 35,
                                          iconColor: Colors.red,
                                          isStarred: true,
                                          valueChanged: (_isStarred) {},
                                        ),
                                        Text(
                                          popularFoodList[index]['rating'],
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black87),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Text(
                                  popularFoodList[index]['name'],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Container(
                                  height: 25,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        popularFoodList[index]
                                            ['discount price'],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red),
                                      ),
                                      RichText(
                                        text: new TextSpan(
                                          children: <TextSpan>[
                                            new TextSpan(
                                              text: popularFoodList[index]
                                                  ['Price'],
                                              style: new TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black45,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        child: Container(
                                          width: 25,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  bottomRight:
                                                      Radius.circular(8)),
                                              color: Colors.red),
                                          child: Center(
                                              child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 25,
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
                    ),
                  );
                }),
          ),
        )));
  }
}
