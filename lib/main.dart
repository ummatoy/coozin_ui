import 'package:coozin/ui/login/rebuildPassword.dart';
import 'package:coozin/ui/order/addFood.dart';
import 'package:coozin/ui/home/home.dart';
import 'package:coozin/ui/login/login.dart';
import 'package:coozin/ui/login/registration.dart';
import 'package:coozin/ui/login/verification.dart';
import 'package:coozin/ui/login/otp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coozin',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
