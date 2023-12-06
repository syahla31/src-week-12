import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  late Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen - Zahra'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                child: const Text('Blue Grey'),
                onPressed: () {
                  color = Colors.blueGrey.shade100;
                  Navigator.pop(context, color);
                }),
            ElevatedButton(
              child: const Text('Purple'),
              onPressed: () {
                color = Colors.purpleAccent.shade100;
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Orange'),
              onPressed: () {
                color = Colors.deepOrangeAccent.shade100;
                Navigator.pop(context, color);
              },
            )
          ],
        ),
      ),
    );
  }
}