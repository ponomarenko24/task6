import 'package:flutter/material.dart';

class SpecialOfferScreen extends StatelessWidget {
  const SpecialOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Return Button'),
            ),
          ],
        ),
      ),
    );
  }
}
