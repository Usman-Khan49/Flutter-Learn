import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_learn/Pages/Cart_Shoppinglist/Login.dart';
import 'package:flutter_learn/Pages/Cart_Shoppinglist/Sign_up.dart';
import 'home.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return ToogleRegistration();
          }
        },
      ),
    );
  }
}

class ToogleRegistration extends StatefulWidget {
  const ToogleRegistration({super.key});

  @override
  State<ToogleRegistration> createState() => _ToogleRegistrationState();
}

class _ToogleRegistrationState extends State<ToogleRegistration> {
  bool toogle = true;

  void Toogle() {
    setState(() {
      toogle = !toogle;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (toogle) {
      return Login(
        ontap: () => Toogle(),
      );
    } else {
      return Signup(
        onTap: () => Toogle(),
      );
    }
  }
}
