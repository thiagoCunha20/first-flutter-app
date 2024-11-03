import 'package:flutter/material.dart';

class PreviousWordList extends StatelessWidget {
  const PreviousWordList();

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   width: 10,
    // );
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          )
        ],
      ),
    );
  }
}
