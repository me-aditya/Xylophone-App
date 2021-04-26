import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "First Flutter App",
    home: Xylophone(),
    theme: ThemeData(
      primarySwatch: Colors.grey,
    ),
  ));
}



class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[],
    );
  }
}
