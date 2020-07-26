import 'package:coozin/utilits/const.dart';
import 'package:flutter/material.dart';

class FoodWaitingPage extends StatefulWidget {
  const FoodWaitingPage({Key key}) : super(key: key);
  @override
  _FoodWaitingPageState createState() => _FoodWaitingPageState();
}

class _FoodWaitingPageState extends State<FoodWaitingPage> {
  Widget _waitingCard() {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
              alignment: Alignment.topRight,
              width: 160.0,
              height: 160.0,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: IconButton(icon: Icon(Icons.image), onPressed: () {}),
              )),
          Column(
            children: <Widget>[
              Expanded(child: Text('Taom nomi')),
              Expanded(child: Text('Miqdor')),
              Expanded(child: Text('Data')),
              Expanded(child: Text('Time')),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.all(16.0),
            child: MaterialButton(
              onPressed: () {},
              minWidth: 196.0,
              height: 48.0,
              color: kPrimaryColor,
              child: Text('Ko`rish'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {}
}
