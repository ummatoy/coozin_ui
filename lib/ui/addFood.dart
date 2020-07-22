import 'package:flutter/material.dart';
import 'package:coozin/utilits/const.dart';

class FoodDetailsPage extends StatefulWidget {
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  Widget _uploadPhoto() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 200.0,
          width: double.infinity,
          margin: EdgeInsets.all(20.0),
          child: Card(
            semanticContainer: false,
            color: Colors.red,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Icon(Icons.image),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.bubble_chart,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[_uploadPhoto()],
          ),
        ),
      ),
    );
  }
}
