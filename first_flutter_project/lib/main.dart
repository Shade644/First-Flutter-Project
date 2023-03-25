// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Card(),
));

// ignore: use_key_in_widget_constructors
class Card extends StatefulWidget {

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {

  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor:Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding:  EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/1.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10
              ),
             Text(
              'Adrian',
              style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30
              ),
               Text(
              'LEVEL',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10
              ),
             Text(
              '$level',
              style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(
              height: 30
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color:Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Shade@email.com',
                  style: TextStyle(
                    color:Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}