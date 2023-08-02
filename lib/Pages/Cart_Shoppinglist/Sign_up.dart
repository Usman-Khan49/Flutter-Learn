import 'package:flutter/material.dart';
import 'package:flutter_learn/Pages/Cart_Shoppinglist/Login.dart';
import '../../Components/Custom_Components.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login())),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35.0),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Formfield(
                  Controller: Controller,
                  Label: 'Username',
                ),
                Formfield(
                  Controller: Controller,
                  Label: 'Email',
                ),
                Formfield(
                  Controller: Controller,
                  Label: 'Password',
                ),
                SizedBox(
                  height: 35,
                ),
                Custom_button(
                  Button_color: Color(0xfffac204),
                  title: 'SIGN UP',
                  padding: 0,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login())),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Color(0xfffac204),
                            decoration: TextDecoration.underline),
                      ),
                    ),
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
