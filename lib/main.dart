// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ffi';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'util/Readinglist.dart';

void main() {
  runApp(LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffD7E5E3), Color(0xffF8F4EC)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.4, 0.9],
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('lib/icons/bars-staggered.png')),
                      Text(
                        'My Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        child: Image.asset('lib/icons/notification.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          'lib/images/image1.jpg',
                          height: 70,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome back,',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[400])),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'John Sortino!',
                              style: TextStyle(
                                color: Color(0xff27231F),
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Ponzu',
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Text
                    Text(
                      'Shelf its all about you read. \nTry and enjoy.',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    // Extended button + icon
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () => Null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Icon
                          Image.asset(
                            'lib/icons/favorite.png',
                            height: 13,
                            width: 13,
                            color: Colors.white,
                          ),
                          // Text
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            child: Text(
                              'SMART PICKER',
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 330,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: LinearGradient(
                          colors: [Color(0xffE8EEE7), Color(0xffFDF8EE)],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          stops: [0.1, 0.9]),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '928',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Ponzu'),
                            ),
                            Text(
                              'Hours',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '129',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Ponzu'),
                            ),
                            Text(
                              'Books',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Ponzu'),
                            ),
                            Text(
                              'Authors',
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'Continue Reading ',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                // Books
                SizedBox(
                  height: 10,
                ),
                Readtile(
                  Path: 'lib/images/Book1.jpg',
                  Author: 'Donna Tarit',
                  percent: 0.62,
                  percentage: '62%',
                  Title: 'The\nGoldfinch',
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Readtile(
                  Path: 'lib/images/Book2.jpg',
                  Author: 'Frank Kafka',
                  percent: 0.45,
                  percentage: '45%',
                  Title: 'Die\nVervandlung',
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) => Null,
          fixedColor: Colors.black,
          unselectedItemColor: Colors.grey[500],
          backgroundColor: Color(0xffD7E5E3),
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_add), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.analytics_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: ''),
          ],
        ),
      ),
    );
  }
}
