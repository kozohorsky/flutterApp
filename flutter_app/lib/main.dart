import 'dart:io';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'customer.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  List<Customer> customers = [
    Customer(
        name: 'Vladimir',
        surname: 'Kozohorsky',
        address: 'Praha 10',
        email: 'kozv01@vse.cz',
        phone: '777 233 539',
        photo: 'avatar.png',
        balance: 1000),
    Customer(
        name: 'Monika',
        surname: 'Kozohorska',
        address: 'Praha 10',
        email: 'monika.k@seznam.cz',
        phone: '777 233 538',
        photo: 'stockapp.png',
        balance: 20)
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cash = 1000;
  File _image;
  final imagePicker = ImagePicker();
  Future getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      
      _image = File(image.path);
  
    });
    log(_image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('User Profile'),
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          onPressed: getImage,
          child: Icon(Icons.camera_alt)),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
        child:       Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          children: <Widget>[
            Center(
             child: Container(
               padding: EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 0.0),
  child: _image == null ? Text("Fotka neyla vybrana") : Image.file(_image)
)
             // child: CircleAvatar(
              //  backgroundImage: _image == null
              //      ? AssetImage('assets/avatar.png')
              //      : AssetImage(_image.path),
              //  radius: 60.0,
             // ),
              //child: _image == null ? Text("Fotka neyla vybrana") : Image.file(_image)
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
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.money, color: Colors.green),
                SizedBox(width: 10.0),
                Text('balance: $cash czk',
                    style: TextStyle(
                        color: Colors.amber[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0))
              ],
            ),
          ],
        ),
      ),
      ),

    );
  }
}
