import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:coozin/utilits/const.dart';

class RebuildPasswordScreen extends StatefulWidget {
  @override
  _RebuildPasswordScreenState createState() => _RebuildPasswordScreenState();
}

class _RebuildPasswordScreenState extends State<RebuildPasswordScreen> {
  final _usernumberController = TextEditingController();
  final _usernumberFocusNode = FocusNode();
  final _unfocusedColor = Colors.grey[600];
  Widget _buildVerification() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.phone,
              ),
              hintText: '(+998)',
              labelStyle: TextStyle(
                  color: _usernumberFocusNode.hasFocus
                      ? Theme.of(context).backgroundColor
                      : _unfocusedColor),
            ),
            focusNode: _usernumberFocusNode,
          ),
        ),
      ],
    );
  }

  Widget _nextButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 2.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.orange,
        child: Text('Yuvorish'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 40.0),
            Column(
              children: <Widget>[
                SizedBox(height: 145.0),
                Text(
                  'Parolni tiklash',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Iltimos telefon raqamingizni kiriting.Sizga telefon raqam orqali parolni tiklash uchun havola yuvoriladi',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 24.0),
            _buildVerification(),
            SizedBox(height: 36.0),
            _nextButton()
          ],
        ),
      ),
    );
  }
}
