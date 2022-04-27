import 'package:flutter/material.dart';
import 'package:foodcano/canteen/BottomNavigation/MyAccount.dart';
import 'package:foodcano/canteen/BottomNavigation/OrderRequests.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          /*DrawerHeader(child: Padding(
              padding: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 0),
                child: Text("This is Drawer Header", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),)
            ),
            decoration: BoxDecoration(color: Colors.green),),*/

          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1531891570158-e71b35a485bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
                maxRadius: 30.0,
                minRadius: 25.0,
              ),
              accountName: Text(
                "Tejas Tripathi",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              accountEmail: Text("tejastripathi18@gnu.ac.in",
                  style: TextStyle(fontSize: 15, color: Colors.white))),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.red,
            ),
            title: Text("Accounts"),
            subtitle: Text("Account Information"),
            trailing: Icon(
              Icons.edit,
              color: Colors.red,
            ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyAccount()));

              },
          ),
          ListTile(
            leading: const Icon(
              Icons.shopping_bag,
              color: Colors.red,
            ),
            title: Text("Orders Request"),
            subtitle: Text("Customer Requests"),

            trailing: const Icon(
              Icons.arrow_forward_sharp,
              color: Colors.red,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OrderRequest()));
            },
          ),
          const ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
            title: Text("Cart"),
            subtitle: Text("My Cart"),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.red,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.red,
            ),
            title: Text("Notifications"),
            subtitle: Text("All Notifications"),
            trailing: Icon(
              Icons.arrow_forward,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
