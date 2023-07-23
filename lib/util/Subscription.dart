import 'package:flutter/material.dart';
import 'package:flutter_learn/Pages/Transfer.dart';

class Sub_Tile extends StatelessWidget {
  const Sub_Tile(
      {super.key,
      required this.box_color,
      required this.colors,
      required this.Date,
      required this.Price,
      required this.Sub_title,
      required this.Title});

  final String Date;
  final String Title;
  final String Sub_title;
  final String Price;
  final Color colors;
  final Color box_color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Transfer()));
          },
          child: Container(
            height: 100,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: colors,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: box_color,
                      ),
                      child: Center(
                        child: Image.asset(
                          'lib/images/figma.png',
                          color: Colors.black,
                          width:
                              20, // Ignored , IF Image is not set in a Center Widget
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Title,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              Sub_title,
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      Price,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        Date,
                        style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
