import 'dart:math';
import 'dart:ui';

import 'package:coozin/utilits/const.dart';
import 'package:flutter/material.dart';
import '../../utilits/const.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _unfocusedColor = Colors.grey[600];
  final _usernumberFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _usernumberFocusNode.addListener(() {
      setState(() {});
    });

    _passwordFocusNode.addListener(() {
      setState(() {});
    });
  }

  Widget _buildNumber() {
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
              contentPadding: EdgeInsets.only(top: 14.0),
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

  Widget _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecorationStyle,
          height: 40.0,
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
              ),
              hintText: 'Parolni kiriting',
              labelStyle: TextStyle(
                  color: _usernumberFocusNode.hasFocus
                      ? Theme.of(context).backgroundColor
                      : _unfocusedColor),
            ),
            focusNode: _passwordFocusNode,
            obscureText: true,
          ),
        ),
      ],
    );
  }

  Widget _login() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      height: 40.0,
      color: Colors.orange,
      child: RaisedButton(
        elevation: 2.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(5.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: kPrimaryColor,
        child: Text('Kirish'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          //padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 40.0),
            Column(
              children: <Widget>[
                SizedBox(height: 16.0),
                Text(
                  'Xush kelibsiz',
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Akkauntingizni kiriting',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 46.0),
            _buildNumber(),
            SizedBox(height: 14.0),
            _buildPassword(),
            SizedBox(height: 68.0),
            _login(),
            SizedBox(height: 36.0),
            Text(
              'Parolingiz esingizdan chiqdimi?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Akkauntingiz yo`qmi?',
                  ),
                  TextSpan(
                      text: 'Ro`yxatdan o`tish',
                      style: TextStyle(
                        color: Colors.orange,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
