import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/original.jpg'),
            ),
            Text(
              'Deku izuko',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tomorrow'),
            ),
            Text(
              'Hero Academia',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal.shade200,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tomorrow'),
            ),
            SizedBox(
              height: 20.0,
              width: 200.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '+213 771 48 85 06',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Tomorrow',
                      fontSize: 20,
                    ),
                  )),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'redmus8@hotmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Tomorrow',
                      fontSize: 20,
                    ),
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
