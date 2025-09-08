import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Basic Flutter App', home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _increaseCounter() {
    setState(() {
      _counter += 1; // change to += 2 to increase by 2
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Counter App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text('Counter: $_counter', style: TextStyle(fontSize: 32)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseCounter,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
