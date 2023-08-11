import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Texts extends ChangeNotifier {
  String Titles = 'Loche';

  String get titles => Titles;
  void SetName() {
    if (Titles == 'Loche') {
      Titles = 'Shakespeare';
    } else {
      Titles = 'Loche';
    }
    notifyListeners();
  }
}

class listPage extends StatefulWidget {
  const listPage({super.key});

  @override
  State<listPage> createState() => _listPageState();
}

class _listPageState extends State<listPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Texts>(
      builder: (context, value, child) => Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  value.Titles,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              FloatingActionButton(onPressed: () => value.SetName())
            ],
          ),
        ),
      ),
    );
  }
}
