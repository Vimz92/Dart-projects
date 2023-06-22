import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  static const _objects = ['Vimal', 'Dhanusha', 'Suraj', 'Samsung', 'Iphone'];
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search Page'),
        ),
        body: Column(
          children: [
            DropdownButtonFormField(
              hint: Text('Search names here'),
              items: _objects.map((e) {
                return DropdownMenuItem(value: e, child: Text(e));
              }).toList(),
              onChanged: (value) {
                print(value);
              },
            ),
          ],
        ));
  }
}
