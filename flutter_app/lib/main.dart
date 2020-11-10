import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
                radius: 60.0,
              ),
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('NAME',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.0),
                    Text('Vladimir',
                        style: TextStyle(
                            color: Colors.amber[300],
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                  ],
                ),
                SizedBox(width: 70.0),
                Column(children: <Widget>[
                  Text('SURNAME',
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10.0),
                  Text('Kozohorsky',
                      style: TextStyle(
                          color: Colors.amber[300],
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0))
                ]),
              ],
            ),
            Divider(
              height: 100.0,
              color: Colors.amber,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.email_rounded, color: Colors.grey[800]),
                SizedBox(width: 10.0),
                Text('kozv01@vse.cz',
                    style: TextStyle(
                        color: Colors.amber[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0))
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.home_rounded, color: Colors.grey[800]),
                SizedBox(width: 10.0),
                Text('Praha 10 Dubec',
                    style: TextStyle(
                        color: Colors.amber[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0))
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.phone_android_rounded, color: Colors.grey[800]),
                SizedBox(width: 10.0),
                Text('+420 777 233 539',
                    style: TextStyle(
                        color: Colors.amber[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
