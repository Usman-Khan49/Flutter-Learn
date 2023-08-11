import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'DrinkTIle.dart';

class itemPage extends StatefulWidget {
  final Drink item;
  const itemPage({super.key, required this.item});

  @override
  State<itemPage> createState() => _itemPageState();
}

class _itemPageState extends State<itemPage> {
  void AddtoCart() {
    for (int i = 0; i < counter; i++) {
      Provider.of<Shop>(context, listen: false).addtoCart(widget.item);
    }

    Navigator.pop(context);
  }

  int counter = 0;

  void Increment() {
    setState(() {
      counter++;
    });
  }

  void Decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(widget.item.name),
              Text(widget.item.Price),
              Text(widget.item.Volume),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () => Decrement(),
                      icon: Icon(Icons.remove_circle)),
                  Text('$counter'),
                  IconButton(
                      onPressed: () => Increment(),
                      icon: Icon(Icons.add_circle))
                ],
              ),
              MaterialButton(
                onPressed: AddtoCart,
                child: Text('Add to Cart'),
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
