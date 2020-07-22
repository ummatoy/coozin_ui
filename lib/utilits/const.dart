import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6600);
const kMainTexttColor = Color(0x0A1F44);
const kSecondaryTextColor = Color(0x66000000);
const kSecondaryColor = Color(0xF1F1F2);
const kButtonBackColor = Color(0xFFF5EE);

final boxDecorationStyle = BoxDecoration(
  color: kButtonBackColor,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.white,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
