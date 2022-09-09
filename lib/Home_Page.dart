import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:testproject/List/new_arrivals.dart';
import 'package:testproject/pages/popularFoodPage.dart';
import 'package:testproject/widgets/Hot_Deals.dart';
import 'package:testproject/widgets/Scroll.dart';
import 'package:testproject/widgets/categorics.dart';
import 'package:testproject/widgets/chip_rate.dart';
import 'package:testproject/widgets/popular_food.dart';
import 'package:testproject/widgets/popular_restaurant.dart';
import 'package:testproject/widgets/todays_hots.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _counter = 1;
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Color.fromARGB(255, 245, 221, 221),
            ),
            Container(
              height: 150,
              width: 150,
              transform: Matrix4.rotationZ(-.35),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ]),
          Scaffold(
            appBar: AppBar(
                leading: Icon(
                  Icons.my_location,
                  color: Colors.white,
                ),
                actions: [
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.only(top: 10, right: 20),
                    child: Stack(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.black,
                          size: 50,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffc32c37),
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Center(
                                child: Text(
                                  _counter.toString(),
                                  style: TextStyle(fontSize: 8),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.only(top: 10, right: 15),
                    child: Stack(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                          size: 50,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffc32c37),
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Center(
                                child: Text(
                                  _counter.toString(),
                                  style: TextStyle(fontSize: 6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                shadowColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                title: Row(
                  children: [
                    Text(
                      "Select Location ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      child: Icon(Icons.keyboard_arrow_down),
                      onTap: () {},
                    )
                  ],
                )),
            body: Container(
              color: Color.fromARGB(255, 245, 221, 221),
              padding: EdgeInsets.only(right: 20, bottom: 5, left: 20),
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 35,
                            child: Container(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  border: InputBorder.none,
                                  label: Row(
                                    children: [
                                      Icon(
                                        Icons.search_rounded,
                                        size: 18,
                                        color: Colors.black45,
                                      ),
                                      Text(
                                        " Search your products",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black45),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(3)),
                              height: double.infinity,
                              child: Icon(
                                Icons.tune,
                                size: 35,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding:
                                  EdgeInsets.only(top: 15, bottom: 5, left: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Food Delivary",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Text(
                                    "Get your Food fast...",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  InkWell(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        "Shop Now",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  Row(
                                    children: [
                                      MyScroll(Scroll_color: Colors.white),
                                      MyScroll(Scroll_color: Colors.white),
                                      MyScroll(Scroll_color: Colors.grey),
                                      MyScroll(Scroll_color: Colors.white),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            flex: 5,
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      alignment: Alignment.bottomRight,
                                      child: CircleAvatar(
                                          maxRadius: 180,
                                          backgroundImage: AssetImage(
                                              "assets/biriyani.jpg")),
                                    )),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.topRight,
                                        height: double.infinity,
                                        child: Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/food2.jpg")),
                                              shape: BoxShape.circle),
                                        ),
                                      ),
                                      flex: 5,
                                    ),
                                  ],
                                ),
                                Container(
                                  height: double.infinity,
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    padding: EdgeInsets.all(5),
                                    margin:
                                        EdgeInsets.only(right: 25, bottom: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "33%",
                                          style: TextStyle(
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("Discount",
                                            style: TextStyle(
                                              fontSize: 18,
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            flex: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categorics",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(fontSize: 22, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 240,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            padding: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                FoodCategorics(
                                    Categori_name: "Burgers",
                                    Categori_image: "assets/burger.jpg"),
                                FoodCategorics(
                                    Categori_name: "Sandwich",
                                    Categori_image: "assets/Sandwich.jpg"),
                                FoodCategorics(
                                    Categori_name: "Sauces",
                                    Categori_image: "assets/sauces.jpg"),
                                FoodCategorics(
                                    Categori_name: "Hot",
                                    Categori_image: "assets/tea.jpg"),
                              ],
                            ),
                          ),
                          Container(
                            height: 120,
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                FoodCategorics(
                                    Categori_name: "Pizza",
                                    Categori_image: "assets/pizza.jpg"),
                                FoodCategorics(
                                    Categori_name: "Sweets",
                                    Categori_image: "assets/sweet.jpg"),
                                FoodCategorics(
                                    Categori_name: "Biriyani",
                                    Categori_image: "assets/biriyani.jpg"),
                                FoodCategorics(
                                    Categori_name: "Drinks",
                                    Categori_image: "assets/drinks.jpg"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Food",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            child: Text(
                              "See all",
                              style: TextStyle(fontSize: 22, color: Colors.red),
                            ),
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PopularFood()));
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            PopularFoodDesign(
                                Categori_name: "Biriyani",
                                Food_name: "Haydarabadi Biriyani..",
                                Food_image: "assets/biriyani.jpg",
                                Food_price: 50.00,
                                Food_discount_price: 19.50,
                                favorite: true),
                            PopularFoodDesign(
                                Categori_name: "Pasta",
                                Food_name: "Deshi Pasta rol...",
                                Food_image: "assets/food1.jpg",
                                Food_price: 80.00,
                                Food_discount_price: 23.76,
                                favorite: false),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 220,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                HotDealsDesign(
                                    discout: 35,
                                    field_color: Colors.red,
                                    image: "assets/food2.jpg"),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    MyScroll(Scroll_color: Colors.grey),
                                    MyScroll(Scroll_color: Colors.red),
                                    MyScroll(Scroll_color: Colors.grey),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                HotDealsDesign(
                                    discout: 35,
                                    field_color:
                                        Color.fromARGB(255, 215, 172, 17),
                                    image: "assets/food2.jpg"),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(children: [
                                  MyScroll(Scroll_color: Colors.grey),
                                  MyScroll(Scroll_color: Colors.grey),
                                  MyScroll(
                                      Scroll_color:
                                          Color.fromARGB(255, 215, 172, 17)),
                                ])
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Restaurant",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(fontSize: 22, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            PopularRestaurantModel(
                                name: "Miyami Restaurant",
                                location: "Comilla",
                                image: "assets/restaurant3.jpg",
                                item: 134,
                                favorite: true),
                            PopularRestaurantModel(
                                name: "Kakoli Restaurant",
                                location: "Comilla",
                                image: "assets/restaurant1.jpg",
                                item: 134,
                                favorite: false),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Todays Hots",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(fontSize: 22, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            TodaysHotsModel(
                                name: "Neapol Burger",
                                categori: "Burger",
                                image: "assets/burger.jpg",
                                price: 10.40,
                                favorite: true),
                            SizedBox(
                              width: 10,
                            ),
                            TodaysHotsModel(
                                name: "Lemon Juice",
                                categori: "Drinks",
                                image: "assets/drinks.jpg",
                                price: 10.40,
                                favorite: true),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Chip Rate",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See all",
                            style: TextStyle(fontSize: 22, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ChipRatesModel(
                                name: "Biroti Restaurant",
                                location: "Comilla",
                                image: "assets/drinks.jpg",
                                item: 123,
                                favorite: true),
                            SizedBox(
                              width: 10,
                            ),
                            ChipRatesModel(
                                name: "Rokel Restaurant",
                                location: "Dhaka",
                                image: "assets/burger.jpg",
                                item: 233,
                                favorite: true),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Arrivals",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.tune,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 2 / 2.5,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          itemCount: newArrivalsFoodList.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Container(
                                margin: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            newArrivalsFoodList[index]["image"],
                                            fit: BoxFit.cover,
                                          ),
                                          Container(
                                            height: 30,
                                            width: double.infinity,
                                            margin: EdgeInsets.all(8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: FavoriteButton(
                                                    iconSize: 30,
                                                    isFavorite:
                                                        newArrivalsFoodList[
                                                            index]['favorite'],
                                                    valueChanged:
                                                        (_isFavorite) {},
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Center(
                                                        child: Text(
                                                      newArrivalsFoodList[index]
                                                          ['discount percent'],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                newArrivalsFoodList[index]
                                                    ['categori'],
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black45),
                                              ),
                                              Row(
                                                children: [
                                                  StarButton(
                                                    iconSize: 35,
                                                    iconColor: Colors.red,
                                                    isStarred: true,
                                                    valueChanged:
                                                        (_isStarred) {},
                                                  ),
                                                  Text(
                                                    newArrivalsFoodList[index]
                                                        ['rating'],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black87),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          Text(
                                            newArrivalsFoodList[index]['name'],
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  newArrivalsFoodList[index]
                                                      ['discount price'],
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.red),
                                                ),
                                                RichText(
                                                  text: new TextSpan(
                                                    children: <TextSpan>[
                                                      new TextSpan(
                                                        text:
                                                            newArrivalsFoodList[
                                                                index]['Price'],
                                                        style: new TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black45,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
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
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            8)),
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
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.email),
                  label: 'Inbox',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
                  ),
                  label: 'Order',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              onTap: (int index) {
                switch (index) {
                  case 0:
                    // only scroll to top when current index is selected.
                    if (_selectedIndex == index) {
                      _homeController.animateTo(
                        0.0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut,
                      );
                    }
                    break;
                }
                setState(
                  () {
                    _selectedIndex = index;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
