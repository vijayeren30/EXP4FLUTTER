import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GPay',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome',
            style: TextStyle(color: Color.fromARGB(255, 105, 59, 59)),
          ),
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}
