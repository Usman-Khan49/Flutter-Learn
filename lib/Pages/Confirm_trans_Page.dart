// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/Components/Custom_Components.dart';
import 'package:flutter_learn/Pages/Wallet.dart';
import 'package:screenshot/screenshot.dart';
import 'Transfer.dart';

class Con_transfer extends StatelessWidget {
  const Con_transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff161326),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffCAFED3),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 215, 250, 221),
                              blurStyle: BlurStyle.outer,
                              blurRadius: 15),
                        ],
                      ),
                      child: Icon(
                        Icons.done,
                        size: 45,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Ding!',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Coins are on its way',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Custom_button(
                button_Icon: Icons.ios_share,
                title: 'Share Receipt',
                Button_color: Color(0xff28253B),
              ),
              Custom_button(
                button_Icon: Icons.biotech_rounded,
                title: 'View in Explorer',
                Button_color: Color(0xff28253B),
              ),
              Custom_button(
                title: 'Go back to Wallet',
                Button_color: Colors.white,
                text_color: Colors.black,
                fontsize: 15,
                padding: 0,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Wallet()))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
