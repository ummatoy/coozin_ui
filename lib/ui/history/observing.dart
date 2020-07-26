import 'package:coozin/utilits/const.dart';
import 'package:flutter/material.dart';

class MonitoringPage extends StatefulWidget {
  @override
  _MonitoringPageState createState() => _MonitoringPageState();
}

class _MonitoringPageState extends State<MonitoringPage> {
  Widget _monitoringBox() {
    return Card(
      child: Container(
          width: double.infinity,
          height: 160.0,
          margin: EdgeInsets.all(32.0),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Expanded(
                    child: Text(''),
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: 144.0,
                    height: 32.0,
                    textColor: Colors.white,
                    color: kPrimaryColor,
                    child: Text('Ko`rish'),
                  )
                ],
              ),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
