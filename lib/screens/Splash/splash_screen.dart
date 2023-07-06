import 'dart:async';

import 'package:ecommerce/screens/Auth/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const id = 'splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const LoginScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.eco_rounded,
              color: Color(0xFFDB3022),
              size: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ecommerce',
              style: TextStyle(
                  color: Color(0xFFDB3022),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
          ],
        )),
      ),
    );
  }
}
