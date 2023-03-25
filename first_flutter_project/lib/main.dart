import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Card(),
));

class Card extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('ID Card'),
      ),
    );
  }
}