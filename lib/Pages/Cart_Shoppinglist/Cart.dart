import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'DrinkTIle.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  void Removeitem(Drink drink) {
    Provider.of<Shop>(context, listen: false).removefromCart(drink);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        body: ListView.builder(
          itemCount: value.userCart.length,
          itemBuilder: (context, int index) {
            Drink Cart_item = value.userCart[index];
            return Container(
              color: Colors.grey,
              width: 100,
              height: 100,
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(Cart_item.name),
                      Text(Cart_item.Price),
                    ],
                  ),
                  IconButton(
                      onPressed: () => Removeitem(Cart_item),
                      icon: Icon(Icons.remove_circle))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
