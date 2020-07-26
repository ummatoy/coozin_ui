import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utilits/const.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
          height: 40.0,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              //contentPadding: EdgeInsets.only(top: 14.0),
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
    //run qilganda ko`rinmadi
    return RaisedButton(
      elevation: 2.0,
      onPressed: () => print('Login Button Pressed'),
      padding: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.orange,
      child: Text(
        'Ro`yxatdan o`tish',
        style: TextStyle(
          color: Colors.white,
        ),
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
                SizedBox(height: 180.0),
                Text(
                  'Telefon raqamni tasdiqlash',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 25.0),
                Text(
                  'Sizning raqamingizga sms kod yuvorildi',
                  style: TextStyle(fontSize: 17.0),
                ),
              ],
            ),
            SizedBox(height: 25.0),
            _buildVerification(),
            SizedBox(height: 56.0),
            _nextButton(),
          ],
        ),
      ),
    );
  }
}
