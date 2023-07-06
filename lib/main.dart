import 'package:ecommerce/screens/Auth/login_screen.dart';
import 'package:ecommerce/screens/Master/main_screen.dart';
import 'package:ecommerce/screens/Auth/register_screen.dart';
import 'package:ecommerce/screens/Product/product_details_screen.dart';
import 'package:ecommerce/screens/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (_) => const SplashScreen(),
        RegisterScreen.id: (_) => const RegisterScreen(),
        LoginScreen.id: (_) => const LoginScreen(),
        MainScreen.id: (_) => const MainScreen(),
        ProductDetailsScreen.id: (_) => const ProductDetailsScreen(),
      },
    );
  }
}
