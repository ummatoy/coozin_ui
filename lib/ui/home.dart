import 'package:coozin/utilits/const.dart';
import 'package:flutter/material.dart';
import 'package:coozin/utilits/const.dart';

class HomeListTab extends StatefulWidget {
  @override
  _HomeListTabState createState() => _HomeListTabState();
}

class _HomeListTabState extends State<HomeListTab> {
  Widget _addFood() {
    return Container(
      height: 80.0,
      decoration: boxDecorationStyle,
      margin: EdgeInsets.symmetric(horizontal: 55.0),
      child: RaisedButton(
        elevation: 2.0,
        onPressed: () => print('Add  Food Button Pressed'),
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: kButtonBackColor,
        child: Text('Taom qo`shish'),
      ),
    );
  }

  Widget _addReceipt() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 55.0),
      height: 60.0,
      decoration: boxDecorationStyle,
      width: double.infinity,
      child: RaisedButton(
        elevation: 2.0,
        onPressed: () => print('Add  Receipt Button Pressed'),
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: kButtonBackColor,
        child: Text('Retsept qo`shish'),
      ),
    );
  }

  Widget _addVideo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 55.0),
      height: 60.0,
      decoration: boxDecorationStyle,
      width: double.infinity,
      child: RaisedButton(
        elevation: 2.0,
        onPressed: () => print('Add  Video Button Pressed'),
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: kButtonBackColor,
        child: Text('Video qo`shish'),
      ),
    );
  }

  Widget _beingClient() {
    return Container(
      decoration: boxDecorationStyle,
      margin: EdgeInsets.symmetric(horizontal: 55.0),
      height: 60.0,
      width: double.infinity,
      child: RaisedButton(
        elevation: 2.0,
        onPressed: () => print('Being Client Button Pressed'),
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: kButtonBackColor,
        child: Text('Mijoz bo`lish'),
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
            SizedBox(height: 150.0),
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
