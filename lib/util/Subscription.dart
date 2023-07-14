import 'package:flutter/material.dart';

class Sub_Tile extends StatelessWidget {
  const Sub_Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          height: 100,
          width: 330,
          color: Color(0xffFAF4B8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.black,
                    child: Image.asset(
                      'lib/images/figma.png',
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Figma'), Text('Design')],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [Text('\$4.99'), Text('JUN 10 @ 5:30 AM')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
