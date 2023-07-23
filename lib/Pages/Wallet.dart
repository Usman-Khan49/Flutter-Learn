// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/util/Subscription.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Subscriptions',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: 320,
                        height: 230,
                        decoration: BoxDecoration(
                            color: Color(0xff161326),
                            borderRadius: BorderRadius.circular(25)),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () => Null,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Icon
                                        Icon(Icons.add_circle),
                                        // Text
                                        Container(
                                          margin: EdgeInsets.only(left: 6),
                                          child: Text(
                                            'Add funds',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  VerticalDivider(
                                    indent: 15,
                                    endIndent: 15,
                                    color: Colors.blueGrey,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    onPressed: () => Null,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Icon
                                        Icon(Icons.arrow_circle_down),
                                        // Text
                                        Container(
                                          margin: EdgeInsets.only(left: 6),
                                          child: Text(
                                            'Withdraw',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 310,
                        height: 160,
                        decoration: BoxDecoration(
                          color: Color(0xffB9F3FF),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                          Icons.wallet_outlined,
                                          color: Color(0xff71B6C6),
                                        ),
                                      ),
                                      Text(
                                        'Subscription\'s wallet',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Colors.black87,
                                    size: 27,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '\$ 324',
                                        style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('.25',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Monthly expenses: \$69',
                                          style: TextStyle(
                                            color: Color(0xff76C8CF),
                                            fontSize: 12,
                                          )),
                                      Image.asset(
                                        'lib/icons/view.png',
                                        height: 22,
                                        width: 22,
                                        color: Colors.blueGrey,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    left: 20,
                    bottom: 10,
                  ),
                  child: Text(
                    'Your subscription',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Sub_Tile(
                      Title: 'Figma',
                      Sub_title: 'Design',
                      Date: 'JUN 10 @ 5:30 AM',
                      Price: '\$4.99',
                      colors: Color(0xffFAF3B7),
                      box_color: Color(0xffF4e879),
                    ),
                    Sub_Tile(
                      Title: 'Dribbble Pro',
                      Sub_title: 'Design',
                      Date: 'JUN 15 @ 3:30 PM',
                      Price: '\$10.99',
                      colors: Color(0xffFDDBEA),
                      box_color: Color(0xffFFBADA),
                    ),
                    Sub_Tile(
                      Title: 'Spotify',
                      Sub_title: 'Music',
                      Date: 'JUN 02 @ 2:15 PM',
                      Price: '\$5.99',
                      colors: Color(0xffCAEAC9),
                      box_color: Color(0xff96D495),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          unselectedItemColor: Colors.grey[500],
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.money), label: ''),
          ],
        ),
      ),
    );
  }
}
