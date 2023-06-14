import 'package:flutter/material.dart';

void main() {
  runApp(const EducationPage());
}

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Title
              Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Text(
                  "What would you like to learn today?",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff10152A),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Search Bar and filter
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic_sharp),
                        filled: true,
                        fillColor: Color(0xffF5F4F9),
                        hintText: "Search courses,mentors,etc.",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Color(0xffF5F4F9), width: 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      height: 60,
                      child: FloatingActionButton(
                        onPressed: () => Null,
                        child: Icon(Icons.settings),
                        backgroundColor: Color(0xffF5F4F9),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),
              // Mentors and Cards
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mentors",
                      style: TextStyle(
                          fontSize: 23,
                          color: Color(0xff0B1222),
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "Trending",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff0B1222),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_drop_down_outlined),
                      ],
                    )
                  ],
                ),
              )
              // Courses and chips

              // Courses Cards
            ],
          ),
        ),
      ),
    );
  }
}
