import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/Pages/Cart_Shoppinglist/Sign_up.dart';

import '../../Components/Custom_Components.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  // User's SignIn Method
  void Signin() async {
    // Circular Progress Indicator
    showDialog(
      context: context,
      builder: (context) => Center(
        child: CircularProgressIndicator(
          color: Color(0xfffac204),
        ),
      ),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: EmailController.text,
        password: PasswordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }

    Navigator.pop(context);
  }

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
              context, MaterialPageRoute(builder: (context) => Signup())),
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
                    'LOGIN',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Formfield(
                  Controller: EmailController,
                  Label: 'Email',
                ),
                Formfield(
                  Controller: PasswordController,
                  Label: 'Password',
                  obscure: true,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.check_circle,
                            color: Color(0xff004473),
                          ),
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(color: Color(0xff6086a4)),
                        ),
                      ],
                    ),
                    Text(
                      'Forget Password?',
                      style: TextStyle(color: Color(0xff6086a4)),
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Custom_button(
                  Button_color: Color(0xfffac204),
                  title: 'LOGIN',
                  padding: 0,
                  onTap: () => Signin(),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Signup()))),
                      child: Text(
                        'SIGN UP',
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
