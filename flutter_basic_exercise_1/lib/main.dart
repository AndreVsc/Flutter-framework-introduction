import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Use super parameter for 'key'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // Shows the debug banner in the corner
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter is Fun!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(color: Colors.red),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Hi Mom', style: TextStyle(color: Colors.white)),
                const SizedBox(width: 4),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.shade300, // Use non-const color
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
