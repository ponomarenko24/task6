import 'package:flutter/material.dart';
import 'package:task_6/home_screen.dart';
import 'package:task_6/special_offer_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/special': (context) => SpecialOfferScreen(),
        }
    );
  }
}



