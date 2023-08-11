import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/Pages/Cart_Shoppinglist/Cart.dart';
import 'package:flutter_learn/Pages/Cart_Shoppinglist/DrinkTIle.dart';
import 'package:provider/provider.dart';

import 'ItemPage.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  void Logout() {
    FirebaseAuth.instance.signOut();
  }

  void _itemPage(Drink drink) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => itemPage(item: drink),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 65,
          titleSpacing: 10,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Center(
              child: Container(
                color: Colors.black,
                height: 50,
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Darlene',
                style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 20),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart())),
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
        ),
        body: Center(
          child: GridView.builder(
            itemCount: value.drink.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              Drink drinks = value.drink[index];
              return DrinkTile(
                onTap: () => _itemPage(drinks),
                Name: drinks.name,
                price: drinks.Price,
                volume: drinks.Volume,
              );
            },
          ),
        ),
      ),
    );
  }
}
