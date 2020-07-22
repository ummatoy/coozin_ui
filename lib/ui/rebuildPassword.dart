import 'package:flutter/material.dart';
import 'package:coozin/utilits/const.dart';

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
                SizedBox(height: 16.0),
                Text(
                  'Parolni tiklash',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 50.0),
                Text(
                  'Iltimos telefon raqamingizni kiriting.Sizga telefon raqam orqali parolni tiklash uchun havola yuvoriladi',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            _buildVerification(),
            SizedBox(height: 10.0),
            _nextButton()
          ],
        ),
      ),
    );
  }
}
