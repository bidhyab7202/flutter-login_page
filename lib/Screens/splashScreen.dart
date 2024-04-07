import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginpage/Screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children:[ Container(
                height: 120, width: 120, color: Colors.blueGrey,
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 28,

                    fontWeight: FontWeight.bold ,
                  ),
                ),
              ),
              ]
          )
      ),
    );
  }
}





