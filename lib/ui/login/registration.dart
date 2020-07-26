import 'dart:ui';

import 'package:flutter/material.dart';
import '../../utilits/const.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _usernumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
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

  Widget _buildName() {
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
                Icons.people_outline,
              ),
              hintText: 'To`liq ismingiz',
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

  Widget _buildNumber() {
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

  Widget _repeatPassword() {
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
              hintText: 'Parolni takror kiriting',
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
      height: 40.0,
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
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
                SizedBox(height: 16.0),
                Text(
                  'Ro`yxatdan o`tish',
                  style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            _buildName(),
            SizedBox(height: 12.0),
            _buildNumber(),
            SizedBox(height: 12.0),
            _buildPassword(),
            SizedBox(height: 12.0),
            _repeatPassword(),
            SizedBox(height: 32.0),
            _login(),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text:
                        'Ro`yxatdan o`tish tugmasini bosish orqali siz quyidagi shartlarga rozilik bildirasiz',
                    style: TextStyle(fontSize: 12.0, color: Colors.black)),
                TextSpan(
                    text: 'Term of confidence',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.orange,
                    ))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
