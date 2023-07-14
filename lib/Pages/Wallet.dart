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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search_outlined,
                          size: 30,
                        )),
                  )
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                    Image.asset(
                                      'lib/icons/favorite.png',
                                      height: 13,
                                      width: 13,
                                      color: Colors.white,
                                    ),
                                    // Text
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 6),
                                      child: Text(
                                        'SMART PICKER',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                indent: 15,
                                endIndent: 15,
                                color: Colors.black,
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
                                    Image.asset(
                                      'lib/icons/favorite.png',
                                      height: 13,
                                      width: 13,
                                      color: Colors.white,
                                    ),
                                    // Text
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 6),
                                      child: Text(
                                        'SMART PICKER',
                                        style: TextStyle(fontSize: 10),
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
                    Container(
                      width: 310,
                      height: 150,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                child: Text('Your Subscription'),
              ),
              Sub_Tile(),
              Sub_Tile(),
            ],
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
