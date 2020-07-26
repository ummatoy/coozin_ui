import 'dart:html';
import 'dart:ui';

import 'package:coozin/utilits/const.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key key}) : super(key: key);
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String text = '';
  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Center(
          child: Text(
            text[position],
            style: TextStyle(color: kMainTexttColor),
          ),
        ),
      );
    } catch (e) {
      return Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 140.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Telefon raqamni tasdiqlash',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 27.0),
                  Text(
                    'Maxsus kodni kiriting',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 500),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        otpNumberWidget(0),
                        otpNumberWidget(1),
                        otpNumberWidget(2),
                        otpNumberWidget(3),
                        otpNumberWidget(4),
                        otpNumberWidget(5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 21.0),
            Text(
              'Kod kelmadimi',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Kodni qayta yuvorish',
              textAlign: TextAlign.center,
              style: TextStyle(
                backgroundColor: Colors.orange,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
