import 'package:flutter/material.dart';

class TwoScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Multi vertical Scroll'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  print(index.toString());
                },
                title: Text('left side'),
              ),
              itemCount: 20,
            ),
          ),
          Expanded(
            flex: 8,
            child: ListView.builder(
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  print(index.toString());
                },
                title: Text('and this is right side'),
                leading: Text(index.toString()),
              ),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
