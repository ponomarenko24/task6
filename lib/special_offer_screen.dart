import 'package:flutter/material.dart';
import 'assets.dart';

class SpecialOfferScreen extends StatelessWidget {
  const SpecialOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Special offer')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              spacing: 16,
              children: [
                productCard(context, Assets.iphone, "iPhone 16", "999",),
                productCard(context, Assets.ipad, "iPad Pro (M4)", "1300",),
                productCard(context, Assets.macbook, "MacBook Air 13.6 (M4)", "1600",),
                productCard(context, Assets.watch, "Watch SE 40mm", "500",),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget productCard(BuildContext context, String asset, String text, String price,) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, '/details', arguments: asset);
    },
    child: Container(
      width: 200,
      height: 300,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        border: Border.all(width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(asset),
          const SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                "$price\$",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              const Text("available", style: TextStyle(fontSize: 16, color: Colors.green)
              )
            ]
          ),
        ],
      ),
    ),
  );
}
