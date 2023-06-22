import 'package:crossroads/widgets/screen_splash.dart';
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
      // _counter++;
    });
  }

  Future<void> showBottomSheet(BuildContext ctx) async {
    showModalBottomSheet(
        context: ctx,
        builder: (ctx1) {
          return Container(
            width: double.infinity,
            height: 500,
            color: Colors.black,
            child: ListView(
              children: [
                Text('Title', style: TextStyle(color: Colors.white)),
                TextButton(
                    onPressed: () {
                      Navigator.of(ctx1).pop();
                    },
                    child: Text('Close'))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The counter value is $_counter',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return ScreenSplash();
                  }));
                },
                child: Text('Go to Page 2')),
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text('Main Page')),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // counterOn();
            showBottomSheet(context);
          },
          child: Icon(Icons.add)),
    );
  }
}
