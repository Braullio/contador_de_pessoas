import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Contador de Pessoas', home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        'images/restaurant.jpg',
        fit: BoxFit.cover,
        height: 1000.0,
      ),
      Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          "Pessoas: $_people",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                  color: Colors.green[800],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    _changePeople(1);
                  },
                  child: Text(
                    '+1',
                    style: TextStyle(fontSize: 40.0),
                  ))),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                  color: Colors.red[800],
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    _changePeople(-1);
                  },
                  child: Text(
                    '-1',
                    style: TextStyle(fontSize: 40.0),
                  ))),
        ]),
        Text(
          'Pode Entrar!',
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 30.0,
              decoration: TextDecoration.none),
        )
      ])
    ]);
  }
}
