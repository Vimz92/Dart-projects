import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});
  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counter = 0;

  void counterOn() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('The counter value is $_counter',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35))),
      appBar: AppBar(
        title: Center(child: Text('1) Project name: Counter Execution')),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterOn();
          },
          child: Icon(Icons.add)),
    );
  }
}
