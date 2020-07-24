import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:coozin/utilits/const.dart';

class FoodDetailsPage extends StatefulWidget {
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int _value;
  bool toggleValue = false;
  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }

  Widget _uploadPhoto() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 200.0,
          width: double.infinity,
          margin: EdgeInsets.all(20.0),
          child: Card(
            semanticContainer: true,
            color: Colors.red,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Icon(Icons.image),
          ),
        ),
      ],
    );
  }

  Widget _foodName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 40.0,
          decoration: boxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }

  Widget _foodDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 40.0,
          decoration: boxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }

  Widget _preparingTime() {
    return Container(
      child: Slider(
        value: _value.toDouble(),
        min: 1.0,
        max: 10.0,
        divisions: 10,
        activeColor: Colors.red,
        inactiveColor: Colors.black,
        label: 'Set a value',
        onChanged: (double newValue) {
          setState(() {
            _value = newValue.round();
          });
        },
      ),
    );
  }

  Widget _type() {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 40.0,
              height: 20.0,
              decoration: boxDecorationStyle,
              child: Text(
                'Suyuq',
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _maxNumberFood() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Maksimal miqdor'),
        Container(
          width: double.infinity,
          height: 20.0,
          decoration: boxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }

  Widget _price() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Narx'),
        Container(
          width: double.infinity,
          height: 20.0,
          decoration: boxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }

  Widget _duration() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Faol davri'),
        Container(
          width: double.infinity,
          height: 20.0,
          decoration: boxDecorationStyle,
          child: TextField(
            keyboardType: TextInputType.datetime,
          ),
        ),
      ],
    );
  }

  Widget _sale() {
    return Row(
      children: <Widget>[
        Text('Chegirma'),
        Container(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            height: 40.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: toggleValue
                  ? Colors.greenAccent[100]
                  : Colors.orangeAccent[100],
            ),
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeIn,
                  top: 3.0,
                  left: toggleValue ? 60.0 : 0.0,
                  right: toggleValue ? 0.0 : 60.0,
                  child: InkWell(
                    onTap: toggleButton,
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 1000),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return ScaleTransition(
                          child: child,
                          scale: animation,
                        );
                      },
                      child: toggleValue
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 35.0,
                              key: UniqueKey(),
                            )
                          : Icon(
                              Icons.remove_circle_outline,
                              color: Colors.orange,
                              size: 35.0,
                              key: UniqueKey(),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _ingredients() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        OutlineButton(
          child: Text(
            '+Bo`lim',
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
          borderSide: BorderSide(
              color: Colors.black, style: BorderStyle.solid, width: 0.8),
        ),
        OutlineButton(
          child: Text(
            '+Tarkibi',
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
          borderSide: BorderSide(
              color: Colors.black, style: BorderStyle.solid, width: 0.8),
        ),
      ],
    );
  }

  Widget _additionalInformation() {
    return Row(
      children: <Widget>[
        Container(
          width: 80.0,
          height: 20.0,
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                suffixIcon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            )),
          ),
        ),
        Container(
          width: 80.0,
          height: 20.0,
          child: TextField(
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }

  Widget _uploadButton() {
    return SizedBox(
      width: 80.0,
      height: 20.0,
      child: Text('Yuklash'),
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
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              _uploadPhoto(),
              _foodName(),
              _foodDescription(),
              _preparingTime(),
              _type(),
              _maxNumberFood(),
              _price(),
              _duration(),
              _sale(),
              _ingredients(),
              _additionalInformation(),
              _uploadButton(),
            ],
          ),
        ),
      ),
    );
  }
}
