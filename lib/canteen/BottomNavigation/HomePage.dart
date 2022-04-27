import 'package:flutter/material.dart';
import 'package:foodcano/canteen/BottomNavigation/AddNewDishPage.dart';
import 'package:foodcano/canteen/BottomNavigation/Cart.dart';
import 'package:foodcano/canteen/BottomNavigation/Categories.dart';
import 'package:foodcano/canteen/BottomNavigation/MyAccount.dart';
import 'package:foodcano/canteen/BottomNavigation/OrderRequests.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    /*const HomePageUI(),*/
    const Categories(),
    const AddnewItem(),
    const OrderRequest(),
    const Cart(),
    const MyAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 28,
              )
                  : const Icon(
                Icons.home_outlined,
                color: Colors.black,
                size: 28,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                Icons.add_box,
                color: Colors.black,
                size: 28,
              )
                  : const Icon(
                Icons.add_box_outlined,
                color: Colors.black,
                size: 28,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                Icons.check_circle,
                color: Colors.black,
                size: 28,
              )
                  : const Icon(
                Icons.check_circle_outline_sharp,
                color: Colors.black,
                size: 28,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                Icons.shopping_cart_sharp,
                color: Colors.black,
                size: 28,
              )
                  : const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 28,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ? const Icon(
                Icons.person,
                color: Colors.black,
                size: 28,
              )
                  : const Icon(
                Icons.person_outline,
                color: Colors.black,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

