// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import
import 'dart:ffi';
import 'package:flutter_learn/Pages/Linear_Gradient.dart';
import 'package:flutter_learn/Pages/Wallet.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'util/Readinglist.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Wallet();
  }
}
