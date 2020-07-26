import 'dart:ui';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:coozin/utilits/const.dart';

class HomeListTab extends StatefulWidget {
  @override
  _HomeListTabState createState() => _HomeListTabState();
}

class _HomeListTabState extends State<HomeListTab> {
  Widget _addFood() {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.orange, width: 2.0)),
        textColor: Color(0x0A1F44),
        color: Colors.white,
        splashColor: Colors.white38,
        disabledColor: Colors.orange,
        disabledTextColor: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(Icons.fastfood, color: Colors.orange, size: 30.0),
            Text(
              'Taom qo`shish',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _addReceipt() {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.orange, width: 2.0)),
        textColor: Color(0x0A1F44),
        color: Colors.white,
        splashColor: Colors.white38,
        disabledColor: Colors.orange,
        disabledTextColor: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(Icons.fastfood, color: Colors.orange, size: 30.0),
            Text(
              'Retsept qo`shish',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _addVideo() {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.orange, width: 2.0)),
        textColor: Color(0x0A1F44),
        color: Colors.white,
        splashColor: Colors.white38,
        disabledColor: Colors.orange,
        disabledTextColor: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(Icons.fastfood, color: Colors.orange, size: 30.0),
            Text(
              'Video qo`shish',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _beingClient() {
    return Container(
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.orange, width: 2.0)),
        textColor: Color(0x0A1F44),
        color: Colors.white,
        splashColor: Colors.white38,
        disabledColor: Colors.orange,
        disabledTextColor: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(Icons.fastfood, color: Colors.orange, size: 30.0),
            Text(
              'Mijoz bo`lish',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(40.0)),
            SizedBox(height: 178.0),
            _addFood(),
            SizedBox(height: 6.0),
            _addReceipt(),
            SizedBox(height: 6.0),
            _addVideo(),
            SizedBox(height: 6.0),
            _beingClient()
          ],
        ),
      ),
    );
  }
}
