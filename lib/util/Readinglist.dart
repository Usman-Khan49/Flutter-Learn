import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Readtile extends StatelessWidget {
  final String Path;
  final String Title;
  final double percent;
  final String percentage;
  final String Author;
  const Readtile(
      {super.key,
      required this.Author,
      required this.Path,
      required this.Title,
      required this.percent,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 100,
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                Path,
                height: 100,
                width: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      Title,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Ponzu'),
                    ),
                  ),
                  Text(
                    Author,
                    style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                percentage,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
              CircularPercentIndicator(
                radius: 10,
                lineWidth: 10,
                percent: percent,
                progressColor: Color(0xff24231F),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
