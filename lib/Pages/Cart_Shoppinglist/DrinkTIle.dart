import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Drink {
  final String name;
  final String Price;
  final String imagePath;
  final String Volume;

  Drink(
      {required this.Volume,
      required this.Price,
      required this.imagePath,
      required this.name});
}

class Shop extends ChangeNotifier {
  final List<Drink> _drink = [
    Drink(Volume: '35 ml', Price: '\$ 3.99', imagePath: '', name: 'Cocha Cola'),
    Drink(Volume: '32 ml', Price: '\$ 5.99', imagePath: '', name: 'Pepsi'),
  ];
  final List<Drink> _userCart = [];

  List<Drink> get drink => _drink;
  List<Drink> get userCart => _userCart;

  void addtoCart(Drink drinks) {
    _userCart.add(drinks);
    notifyListeners();
  }

  void removefromCart(Drink drinks) {
    _userCart.remove(drinks);
    notifyListeners();
  }
}

class DrinkTile extends StatelessWidget {
  const DrinkTile(
      {super.key,
      required this.Name,
      required this.price,
      required this.volume,
      required this.onTap});

  final String Name;
  final String price;
  final String volume;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 50,
          height: 70,
          color: Colors.grey.shade400,
          child: Column(children: [
            Text(Name),
            Text(volume),
            Text(price),
          ]),
        ),
      ),
    );
  }
}
