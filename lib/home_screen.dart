import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            headerText("Hello! Welcome to the shop!"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/special');
              },
              child: const Text('To special offers'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget headerText(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  );
}
