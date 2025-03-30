import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String image = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(image),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("return"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
