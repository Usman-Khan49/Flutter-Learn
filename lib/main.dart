// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import
import 'package:flutter_learn/Pages/Cart_Shoppinglist/List.dart';
import 'package:flutter_learn/Pages/Cart_Shoppinglist/auth.dart';
import 'package:flutter_learn/Pages/Linear_Gradient.dart';
import 'package:flutter_learn/Pages/Wallet_UI/Wallet.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Pages/Cart_Shoppinglist/DrinkTIle.dart';
import 'Pages/Cart_Shoppinglist/Sign_up.dart';
import 'util/Readinglist.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Shop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AuthPage(),
      ),
    );
  }
}
